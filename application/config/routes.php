<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/userguide3/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] = 'Home';
$route['404_override'] = '';
$route['translate_uri_dashes'] = FALSE;

//Auth
$route['login'] = 'Auth';
$route['logout'] = 'Auth/logout';
$route['forget-password'] = 'Auth/forgetPassword';
$route['daftar'] = 'Auth/register';
// Kos
$route['kos'] = 'Kos';
$route['add-kos'] = 'Kos/form';
$route['update-kos/(:num)'] = 'Kos/form/$1';
$route['delete-kos/(:num)'] = 'Kos/delete/$1';
$route['import-kos'] = 'Kos/import';
// Bimbel
$route['bimbel'] = 'Bimbel';
$route['add-bimbel'] = 'Bimbel/form';
$route['update-bimbel/(:num)'] = 'Bimbel/form/$1';
$route['delete-bimbel/(:num)'] = 'Bimbel/delete/$1';
$route['calc-bimbel'] = 'Bimbel/calculate';
$route['import-bimbel'] = 'Bimbel/import';
// Fasilitas
$route['fasilitas'] = 'Fasilitas';
$route['add-fasilitas'] = 'Fasilitas/form';
$route['update-fasilitas/(:num)'] = 'Fasilitas/form/$1';
$route['delete-fasilitas/(:num)'] = 'Fasilitas/delete/$1';
$route['calc-fasilitas'] = 'Fasilitas/calculate';
$route['import-fasilitas'] = 'Fasilitas/import';
// Detail Kos
$route['detailkos/(:num)'] = 'Detailkos/index/$1';
$route['add-detailkos/(:num)'] = 'Detailkos/form/$1';
$route['update-detailkos/(:num)/(:num)'] = 'Detailkos/form/$1/$2';
$route['delete-detailkos/(:num)/(:num)'] = 'Detailkos/delete/$1/$2';
// Kriteria
$route['kriteria'] = 'Kriteria';
$route['add-kriteria'] = 'Kriteria/form';
$route['update-kriteria/(:num)'] = 'Kriteria/form/$1';
$route['delete-kriteria/(:num)'] = 'Kriteria/delete/$1';
// Detail Kriteria
$route['detailkriteria/(:num)'] = 'Detailkriteria/index/$1';
$route['add-detailkriteria/(:num)'] = 'Detailkriteria/form/$1';
$route['update-detailkriteria/(:num)/(:num)'] = 'Detailkriteria/form/$1/$2';
$route['delete-detailkriteria/(:num)/(:num)'] = 'Detailkriteria/delete/$1/$2';
// User
$route['user'] = 'User';
$route['add-user'] = 'User/form';
$route['update-user/(:num)'] = 'User/form/$1';
$route['delete-user/(:num)'] = 'User/delete/$1';
$route['change-password'] = 'User/updatePassword';
// Rekomendasi
$route['rekomendasi'] = 'Rekomendasi';
$route['proses-hitung'] = 'Rekomendasi/hitung';
$route['detail-kos/(:num)'] = 'Rekomendasi/detail/$1';
// --------------------
