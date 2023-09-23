# Copyright 2022-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.5.4-r1

EAPI=8

CRATES="
	addr2line@0.21.0
	adler@1.0.2
	aead@0.5.2
	aes@0.8.3
	aes-gcm@0.10.3
	aes-gcm-siv@0.11.1
	aho-corasick@1.1.1
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.5.0
	anstyle@1.0.3
	anstyle-parse@0.2.1
	anstyle-query@1.0.0
	anstyle-wincon@2.1.0
	anyhow@1.0.75
	arc-swap@1.6.0
	arrayref@0.3.7
	arrayvec@0.7.4
	async-trait@0.1.73
	atomic-polyfill@0.1.11
	autocfg@1.1.0
	backtrace@0.3.69
	base16ct@0.1.1
	base64@0.21.4
	base64ct@1.6.0
	bit-vec@0.6.3
	bitflags@1.3.2
	bitflags@2.4.0
	blake3@1.5.0
	block-buffer@0.10.4
	bloomfilter@1.0.12
	build-time@0.1.3
	bumpalo@3.14.0
	byte_string@1.0.0
	byteorder@1.4.3
	bytes@1.5.0
	cc@1.0.83
	ccm@0.5.0
	cfg-if@1.0.0
	chacha20@0.9.1
	chacha20poly1305@0.10.1
	checked_int_cast@1.0.0
	chrono@0.4.31
	cipher@0.4.4
	clap@4.4.4
	clap_builder@4.4.4
	clap_lex@0.5.1
	cmake@0.1.50
	colorchoice@1.0.0
	const-oid@0.9.5
	constant_time_eq@0.3.0
	core-foundation@0.9.3
	core-foundation-sys@0.8.4
	cpufeatures@0.2.9
	critical-section@1.1.2
	crossbeam-channel@0.5.8
	crossbeam-utils@0.8.16
	crypto-bigint@0.4.9
	crypto-common@0.1.6
	ctr@0.9.2
	daemonize@0.5.0
	data-encoding@2.4.0
	defmt@0.3.5
	defmt-macros@0.3.6
	defmt-parser@0.3.3
	der@0.6.1
	derivative@2.2.0
	destructure_traitobject@0.2.0
	digest@0.10.7
	directories@5.0.1
	dirs-sys@0.4.1
	ecdsa@0.14.8
	ed25519@1.5.3
	elliptic-curve@0.12.3
	encoding_rs@0.8.33
	enum-as-inner@0.6.0
	env_logger@0.10.0
	errno@0.3.3
	errno-dragonfly@0.1.2
	etherparse@0.13.0
	fastrand@2.0.0
	filetime@0.2.22
	fnv@1.0.7
	foreign-types@0.3.2
	foreign-types-shared@0.1.1
	form_urlencoded@1.2.0
	fsevent-sys@4.1.0
	futures@0.3.28
	futures-channel@0.3.28
	futures-core@0.3.28
	futures-executor@0.3.28
	futures-io@0.3.28
	futures-macro@0.3.28
	futures-sink@0.3.28
	futures-task@0.3.28
	futures-util@0.3.28
	generic-array@0.14.7
	getrandom@0.2.10
	ghash@0.5.0
	gimli@0.28.0
	h2@0.3.21
	hash32@0.2.1
	hashbrown@0.12.3
	heapless@0.7.16
	heck@0.4.1
	hermit-abi@0.3.3
	hkdf@0.12.3
	hmac@0.12.1
	hostname@0.3.1
	http@0.2.9
	http-body@0.4.5
	httparse@1.8.0
	httpdate@1.0.3
	humantime@2.1.0
	hyper@0.14.27
	hyper-rustls@0.24.1
	hyper-tls@0.5.0
	iana-time-zone@0.1.57
	iana-time-zone-haiku@0.1.2
	idna@0.4.0
	indexmap@1.9.3
	inotify@0.9.6
	inotify-sys@0.1.5
	inout@0.1.3
	ioctl-sys@0.6.0
	ipconfig@0.3.2
	ipnet@2.8.0
	iprange@0.6.7
	is-terminal@0.4.9
	itoa@1.0.9
	jemalloc-sys@0.5.4+5.3.0-patched
	jemallocator@0.5.4
	js-sys@0.3.64
	json5@0.4.1
	kqueue@1.0.8
	kqueue-sys@1.0.4
	lazy_static@1.4.0
	libc@0.2.148
	libmimalloc-sys@0.1.35
	linked-hash-map@0.5.6
	linux-raw-sys@0.4.7
	lock_api@0.4.10
	log@0.4.20
	log-mdc@0.1.0
	log4rs@1.2.0
	lru-cache@0.1.2
	lru_time_cache@0.11.11
	managed@0.8.0
	match_cfg@0.1.0
	md-5@0.10.6
	memchr@2.6.3
	mimalloc@0.1.39
	mime@0.3.17
	miniz_oxide@0.7.1
	mio@0.8.8
	native-tls@0.2.11
	nix@0.27.1
	notify@6.1.1
	num-traits@0.2.16
	num_cpus@1.16.0
	object@0.32.1
	once_cell@1.18.0
	opaque-debug@0.3.0
	openssl@0.10.57
	openssl-macros@0.1.1
	openssl-probe@0.1.5
	openssl-src@300.1.5+3.1.3
	openssl-sys@0.9.93
	option-ext@0.2.0
	ordered-float@2.10.0
	p256@0.11.1
	p384@0.11.2
	parking_lot@0.12.1
	parking_lot_core@0.9.8
	percent-encoding@2.3.0
	pest@2.7.3
	pest_derive@2.7.3
	pest_generator@2.7.3
	pest_meta@2.7.3
	pin-project@1.1.3
	pin-project-internal@1.1.3
	pin-project-lite@0.2.13
	pin-utils@0.1.0
	pkcs8@0.9.0
	pkg-config@0.3.27
	poly1305@0.8.0
	polyval@0.6.1
	ppv-lite86@0.2.17
	proc-macro-error@1.0.4
	proc-macro-error-attr@1.0.4
	proc-macro2@1.0.67
	qrcode@0.12.0
	quick-error@1.2.3
	quote@1.0.33
	rand@0.8.5
	rand_chacha@0.3.1
	rand_core@0.6.4
	redox_syscall@0.2.16
	redox_syscall@0.3.5
	redox_users@0.4.3
	regex@1.9.5
	regex-automata@0.3.8
	regex-syntax@0.7.5
	reqwest@0.11.20
	resolv-conf@0.7.0
	ring@0.16.20
	ring-compat@0.5.1
	rpassword@7.2.0
	rpmalloc@0.2.2
	rpmalloc-sys@0.2.3+b097fd0
	rtoolbox@0.0.1
	rustc-demangle@0.1.23
	rustc_version@0.4.0
	rustix@0.38.14
	rustls@0.21.7
	rustls-native-certs@0.6.3
	rustls-pemfile@1.0.3
	rustls-webpki@0.101.6
	ryu@1.0.15
	same-file@1.0.6
	schannel@0.1.22
	scopeguard@1.2.0
	sct@0.7.0
	sec1@0.3.0
	security-framework@2.9.2
	security-framework-sys@2.9.1
	semver@1.0.19
	sendfd@0.4.3
	serde@1.0.188
	serde-value@0.7.0
	serde_derive@1.0.188
	serde_json@1.0.107
	serde_urlencoded@0.7.1
	serde_yaml@0.8.26
	sha1@0.10.6
	sha2@0.10.7
	shadowsocks-crypto@0.5.1
	signal-hook-registry@1.4.1
	signature@1.6.4
	siphasher@1.0.0
	slab@0.4.9
	smallvec@1.11.1
	smoltcp@0.10.0
	snmalloc-rs@0.3.4
	snmalloc-sys@0.3.4
	socket2@0.4.9
	socket2@0.5.4
	spin@0.5.2
	spin@0.9.8
	spki@0.6.0
	stable_deref_trait@1.2.0
	strsim@0.10.0
	subtle@2.5.0
	syn@1.0.109
	syn@2.0.37
	sysexits@0.7.2
	tcmalloc@0.3.0
	tcmalloc-sys@0.3.0
	tempfile@3.8.0
	termcolor@1.3.0
	terminal_size@0.3.0
	thiserror@1.0.48
	thiserror-impl@1.0.48
	thread-id@4.2.0
	tinyvec@1.6.0
	tinyvec_macros@0.1.1
	tokio@1.32.0
	tokio-macros@2.1.0
	tokio-native-tls@0.3.1
	tokio-rustls@0.24.1
	tokio-tfo@0.2.2
	tokio-util@0.6.10
	tokio-util@0.7.9
	tower@0.4.13
	tower-layer@0.3.2
	tower-service@0.3.2
	tracing@0.1.37
	tracing-attributes@0.1.26
	tracing-core@0.1.31
	trust-dns-proto@0.23.0
	trust-dns-resolver@0.23.0
	try-lock@0.2.4
	tun@0.5.5
	typemap-ors@1.0.0
	typenum@1.17.0
	ucd-trie@0.1.6
	unicode-bidi@0.3.13
	unicode-ident@1.0.12
	unicode-normalization@0.1.22
	universal-hash@0.5.1
	unsafe-any-ors@1.0.0
	untrusted@0.7.1
	url@2.4.1
	utf8parse@0.2.1
	vcpkg@0.2.15
	version_check@0.9.4
	walkdir@2.4.0
	want@0.3.1
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen@0.2.87
	wasm-bindgen-backend@0.2.87
	wasm-bindgen-futures@0.4.37
	wasm-bindgen-macro@0.2.87
	wasm-bindgen-macro-support@0.2.87
	wasm-bindgen-shared@0.2.87
	web-sys@0.3.64
	webpki-roots@0.25.2
	widestring@1.0.2
	winapi@0.3.9
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-util@0.1.6
	winapi-x86_64-pc-windows-gnu@0.4.0
	windows@0.48.0
	windows-service@0.6.0
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.2
	windows-targets@0.48.5
	windows_aarch64_gnullvm@0.42.2
	windows_aarch64_gnullvm@0.48.5
	windows_aarch64_msvc@0.42.2
	windows_aarch64_msvc@0.48.5
	windows_i686_gnu@0.42.2
	windows_i686_gnu@0.48.5
	windows_i686_msvc@0.42.2
	windows_i686_msvc@0.48.5
	windows_x86_64_gnu@0.42.2
	windows_x86_64_gnu@0.48.5
	windows_x86_64_gnullvm@0.42.2
	windows_x86_64_gnullvm@0.48.5
	windows_x86_64_msvc@0.42.2
	windows_x86_64_msvc@0.48.5
	winreg@0.50.0
	xdg@2.5.2
	yaml-rust@0.4.5
	zeroize@1.6.0
"

inherit cargo linux-info systemd

MY_PV=${PV/_alpha/-alpha.}

DESCRIPTION="A Rust port of shadowsocks."
HOMEPAGE="https://github.com/shadowsocks/shadowsocks-rust"
SRC_URI="https://github.com/shadowsocks/shadowsocks-rust/archive/v${MY_PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}"
RESTRICT="mirror strip"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm64 ~mips ~x86"
IUSE="redir tun"

BDEPEND=">=virtual/rust-1.70.0"

S="${WORKDIR}/${PN}-${MY_PV}"

QA_FLAGS_IGNORED="
	usr/bin/sslocal
	usr/bin/ssmanager
	usr/bin/ssurl
	usr/bin/ssservice
	usr/bin/ssserver
"

pkg_setup() {
	if use tun; then
		CONFIG_CHECK="~TUN"
		linux-info_pkg_setup
	fi
}

src_configure() {
	local myfeatures=(
		$(usex redir local-redir "")
		$(usex tun local-tun "")
	)
	cargo_src_configure
}

src_install() {
	cargo_src_install

	systemd_newunit "${FILESDIR}/shadowsocks-rust_at.service" shadowsocks-rust@.service
	systemd_newunit "${FILESDIR}/shadowsocks-rust-server_at.service" shadowsocks-rust-server@.service

	insinto "/etc/${PN}"
	doins examples/*.json
}
