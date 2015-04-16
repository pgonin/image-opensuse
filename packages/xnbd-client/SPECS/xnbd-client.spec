Name:           xnbd-client
Version:        0.3.0
Release:        1%{?dist}
Summary:        Network Block Device client with support for live migration.

License:        GPLv2
URL:            https://bitbucket.org/hirofuchi/xnbd/wiki/Home
Source0:        https://bitbucket.org/hirofuchi/xnbd/downloads/xnbd-0.3.0.tar.bz2

BuildRequires:  automake gcc gcc-c++ kernel-devel glib2-devel

%description
Network Block Device client with support for live migration.

%prep
%autosetup -n xnbd-0.3.0
%build
%configure
make %{?_smp_mflags}
%install
rm -rf $RPM_BUILD_ROOT
%make_install

%define _unpackaged_files_terminate_build 0 
%files
%{_libdir}/libxnbd_internal.la
%{_libdir}/libxnbd_internal.so
%{_libdir}/libxnbd_internal.so.0
%{_libdir}/libxnbd_internal.so.0.0.0
%{_sbindir}/xnbd-client
%{_mandir}/man1/xnbd-client.1.gz
%doc



%changelog
* Fri Feb 20 2015 Sebastien Rannou <srannou@ocs.online.net> - 
- Initial version of the package.
