<div id="sidebar-nav" class="sidebar">
			<div class="sidebar-scroll">
				<nav>
					<ul class="nav">
            <li><a href="{{ url('/home') }}"><i class="lnr lnr-home"></i> <span>Dashboard</span></a></li>
            @if(\Auth::user()->role != 1)
            <li><a href="{{ url('/pendaftaran') }}" class=""><i class="fa fa-id-card"></i> <span>Pendaftaran Siswa</span></a></li>
            @endif
            <li><a href="{{ url('/jadwal') }}" class=""><i class="fa fa-calendar"></i> <span>Jadwal</span></a></li>
            @if(\Auth::user()->role == 1)
            <li><a href="{{ url('/peserta') }}"><i class="fa fa-user-circle-o"></i> <span> Data Peserta</span></a></li>
            @endif

						<li>
							<a href="#subPages" data-toggle="collapse" class="collapsed"><i class="lnr lnr-file-empty"></i> <span>Other</span> <i class="icon-submenu lnr lnr-chevron-left"></i></a>
							<div id="subPages" class="collapse ">
								<ul class="nav">
									<li><a href="{{ url('/gantipass') }}" class="">Ganti Password</a></li>
									<li><a href="{{ url('/keluar') }}" class="">Logout</a></li>
								</ul>
							</div>
						</li>
						
					</ul>
				</nav>
			</div>
		</div>