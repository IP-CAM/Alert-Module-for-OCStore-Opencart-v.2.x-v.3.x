<?php
class ControllerExtensionModuleAlert extends Controller
{
    public function install()
    {
        $this->load->model('setting/setting');
        $defaultParams = array(
            'status' => 0,
            'color' => 'red',
            'home_only' => 0,
            'text1' => 'Text1',
            'link' => 'index.php?route=common/home',
            'linktext' => 'Link',
            'text2' => 'Text2',
            'closable' => 1
        );
        $settings = array('module_alert_settings' => json_encode($defaultParams));
        $this->model_setting_setting->editSetting('module_alert', $settings);
    }

    public function uninstall()
    {
        if ($this->validate()) {
            $this->load->model('setting/setting');
            $this->model_setting_setting->deleteSetting('module_alert');
        }
    }

    public function index()
    {
        $this->load->language('extension/module/alert');
        $this->load->model('setting/setting');
        $this->document->setTitle($this->language->get('heading_title'));

        if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
            $settings = array('module_alert_settings' => json_encode($this->request->post));
            $this->model_setting_setting->editSetting('module_alert', $settings);
            $this->session->data['success'] = $this->language->get('text_success');
            $this->response->redirect($this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true));
        }

        $data = array();
        $settings = json_decode($this->model_setting_setting->getSetting('module_alert')['module_alert_settings'], true);
        $data += $settings;
        $data += $this->load->language('extension/module/alert');
        $data += $this->GetBreadCrumbs();

        $data['action'] = $this->url->link('extension/module/alert', 'token=' . $this->session->data['token'], true);
        $data['cancel'] = $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true);
        $data['header'] = $this->load->controller('common/header');
        $data['column_left'] = $this->load->controller('common/column_left');
        $data['footer'] = $this->load->controller('common/footer');

        $this->response->setOutput($this->load->view('extension/module/alert', $data));
    }

    private function GetBreadCrumbs()
    {
        $data = array();
        $data['breadcrumbs'] = array();
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_home'),
            'href' => $this->url->link('common/dashboard', 'token=' . $this->session->data['token'], true)
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('text_extension'),
            'href' => $this->url->link('extension/extension', 'token=' . $this->session->data['token'] . '&type=module', true)
        );
        $data['breadcrumbs'][] = array(
            'text' => $this->language->get('heading_title'),
            'href' => $this->url->link('extension/module/alert', 'token=' . $this->session->data['token'], true)
        );

        return $data;
    }

    protected function validate()
    {
        $errors = array();
        if (!$this->user->hasPermission('modify', 'extension/module/alert')) {
            $errors['warning'] = $this->language->get('error_permission');
        }
        $this->session->data['errors'] = $errors;

        return empty($errors);
    }
}
