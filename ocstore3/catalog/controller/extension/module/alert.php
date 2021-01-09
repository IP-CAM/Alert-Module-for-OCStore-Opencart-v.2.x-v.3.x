<?php
class ControllerExtensionModuleAlert extends Controller
{
    public function index()
    {
        $this->load->model('setting/setting');

        // if module installed, but not initialized
        if (empty($this->model_setting_setting->getSetting('module_alert'))) {
            return null;
        }

        $settings = json_decode($this->model_setting_setting->getSetting('module_alert')['module_alert_settings'], true);

        // if module disabled
        if (!$settings['status']) {
            return null;
        }

        $this->document->addScript('catalog/view/javascript/jquery/cookie/jquery.cookie.min.js');
        $this->document->addScript('catalog/view/javascript/alert/alert.js');

        // check this is homepage
        $isHome = empty($this->request->get['route']) || $this->request->get['route'] == 'common/home';
        $homeOnly = $settings['home_only'];

        if ($isHome && $homeOnly || !$homeOnly) {
            return $this->load->view('extension/module/alert', $settings);
        }
        return null;
    }
}
