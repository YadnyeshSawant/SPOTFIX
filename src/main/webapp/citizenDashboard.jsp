<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="beans.UserBean"%>
<%
UserBean user = (UserBean) session.getAttribute("user");

if(user == null){
    response.sendRedirect("Login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Citizen Portal Dashboard</title>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F59E0B",
					"background-light" : "#F9FAFB",
					"background-dark" : "#121212",
					"card-dark" : "#2E3137",
					"surface-dark" : "#1E1E1E"
				},
				fontFamily : {
					display : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "12px",
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        body {
            font-family: 'Inter', sans-serif;
            -webkit-font-smoothing: antialiased;
        }
        .custom-scrollbar::-webkit-scrollbar {
            width: 6px;
            height: 6px;
        }
        .custom-scrollbar::-webkit-scrollbar-track {
            background: transparent;
        }
        .custom-scrollbar::-webkit-scrollbar-thumb {
            background: #4B5563;
            border-radius: 10px;
        }
        .profile-gradient {
            background: linear-gradient(135deg, #6366f1 0%, #a855f7 50%, #ec4899 100%);
        }
        .interactive-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 min-h-screen">
	<aside
		class="fixed left-0 top-0 h-full w-64 bg-white dark:bg-card-dark border-r border-slate-200 dark:border-slate-800 z-50 hidden lg:flex flex-col">
		<div class="p-6">
			<div class="flex items-center gap-3 text-primary">
				<span class="material-symbols-outlined text-3xl">account_balance</span>
				<span
					class="font-bold text-xl tracking-tight text-slate-900 dark:text-white">Citizen
					Portal</span>
			</div>
		</div>
		<nav class="flex-1 px-4 space-y-2 mt-4">
			<a
				class="flex items-center gap-3 px-4 py-3 rounded-xl bg-primary/10 text-primary font-medium hover:bg-primary/20 transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">home</span>
				Dashboard
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">person</span>
				Profile
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">campaign</span>
				Announcements
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">assignment_late</span>
				My Issues
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">lightbulb</span>
				Project Ideas
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">map</span>
				Issues Map
			</a>
		</nav>
		<div
			class="p-4 mt-auto border-t border-slate-200 dark:border-slate-800">
			<a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">settings</span>
				Settings
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-red-500 hover:bg-red-50 dark:hover:bg-red-500/10 transition-colors hover:underline"
				href="#"> <span class="material-symbols-outlined">logout</span>
				Logout
			</a>
		</div>
	</aside>
	<main class="lg:ml-64 p-4 lg:p-8">
		<header class="flex items-center justify-between mb-8">
			<div>
				<h1 class="text-2xl font-bold dark:text-white">
					Welcome back,
					<%= user.getFull_name()%></h1>
				<p class="text-slate-500 dark:text-slate-400 text-sm">Stay
					updated with your local community happenings.</p>
			</div>
			<div class="flex items-center gap-4"></div>
		</header>
		<div class="grid grid-cols-1 xl:grid-cols-3 gap-8">
			<div class="xl:col-span-2 space-y-8">
				<section>
					<div class="flex items-center justify-between mb-4">
						<h2
							class="text-lg font-bold flex items-center gap-2 dark:text-white">
							<span class="material-symbols-outlined text-primary">campaign</span>
							Emergency Announcements
						</h2>
						<a class="text-sm text-primary font-semibold hover:underline"
							href="#">View All</a>
					</div>
					<div
						class="flex gap-4 overflow-x-auto pb-4 custom-scrollbar snap-x">
						<div
							class="min-w-[320px] md:min-w-[400px] snap-start bg-white dark:bg-card-dark rounded-2xl overflow-hidden border border-slate-200 dark:border-slate-800 shadow-sm">
							<div class="aspect-video relative">
								<img alt="Smart Traffic Update"
									class="w-full h-full object-cover"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuCgH4mSbH-5yKHJ8BcU9skPEqDoa3ce9dXjr10RP52eE8zr6EPz6mz53ubEg8T52pXTw0X-FNAhoDjnkkZFfNZwt1Dhh8utUrkPCHLTlXEHGuMurVBBxWsztYWADyQKM3pZFNV_xjYd-cOXKTpPzBJ9Ox1QL6SvFYFrQyJtVDna8LB8a6XrpYxi679LW1XDnI2iSqDNcaNdxXyRQ3-j7WDbh9EzWujdbae1ZBl-tHW_VchmVjLbpO43AOAGNKkzz_QBhIxqaeKmHK4" />
								<div
									class="absolute top-3 left-3 bg-red-600 text-white text-[10px] font-bold px-2 py-1 rounded uppercase tracking-wider">Urgent</div>
							</div>
							<div class="p-4">
								<h3
									class="font-bold text-slate-900 dark:text-white line-clamp-1 mb-1">City
									Implements Smart Traffic Management</h3>
								<p class="text-xs text-slate-500 dark:text-slate-400 mb-3">Department
									of Rural Development</p>
								<div class="flex items-center justify-between">
									<span class="text-[10px] text-slate-400">18 hours ago</span> <a
										class="text-xs font-semibold text-primary hover:underline"
										href="#">Read More</a>
								</div>
							</div>
						</div>
						<div
							class="min-w-[320px] md:min-w-[400px] snap-start bg-white dark:bg-card-dark rounded-2xl overflow-hidden border border-slate-200 dark:border-slate-800 shadow-sm">
							<div class="aspect-video relative">
								<img alt="Health Drive" class="w-full h-full object-cover"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuAlcaw2v5-JxuHbrrCiI6ylfr447sClnDMip6gDYVBWFwd7YH752z-r1WMc7QEBNTPJ26weT2Of_V9-dkE3PfxQhWIp61-Z8ZLVIRNh9Orratuj0r6nzBxCoggqdluC7CDgQP2CKzMm8SIU87-rduPVhOScCqmvI2LLqnAKri8aJHu-zKb_S7mmkKVuHmc5qgco3M6Nk5BFBBKueitSo0a29RhIk81Bco1jjwRs7eFJjpwvn4_ciDn9fRvUARLwGA_bxqMNoLQuJ3I" />
								<div
									class="absolute top-3 left-3 bg-blue-600 text-white text-[10px] font-bold px-2 py-1 rounded uppercase tracking-wider">Update</div>
							</div>
							<div class="p-4">
								<h3
									class="font-bold text-slate-900 dark:text-white line-clamp-1 mb-1">Upcoming
									Public Health Vaccination Drive</h3>
								<p class="text-xs text-slate-500 dark:text-slate-400 mb-3">Health
									&amp; Welfare Dept</p>
								<div class="flex items-center justify-between">
									<span class="text-[10px] text-slate-400">22 hours ago</span> <a
										class="text-xs font-semibold text-primary hover:underline"
										href="#">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</section>
				<section>
					<div class="flex items-center justify-between mb-4">
						<h2
							class="text-lg font-bold flex items-center gap-2 dark:text-white">
							<span class="material-symbols-outlined text-primary">newspaper</span>
							Latest News
						</h2>
						<a class="text-sm text-primary font-semibold hover:underline"
							href="#">View All</a>
					</div>
					<div class="space-y-4">
						<a
							class="flex gap-4 p-4 bg-white dark:bg-card-dark rounded-2xl border border-slate-200 dark:border-slate-800 hover:border-primary/50 transition-colors group"
							href="#">
							<div
								class="w-24 h-24 sm:w-32 sm:h-32 flex-shrink-0 rounded-xl overflow-hidden border border-slate-200 dark:border-slate-700">
								<img alt="Road Project"
									class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuBMI5dET4D-VTF-7GpypMS8F2jKdOuVgUSHdrLBMr53o2uSE82QbKTetGdU_m1fBcR29DoyAWVeFjo-8I-5MJVFARtN9uj7hmP7TsgJVSTvAkjDbYqanjokwm5ttoqlxbGjNP7QXVLy2utZ1EOIBjaYODc1k3wbcCcfAhnFjPrku_YYDHbaK3I6JGGKqU26CQ5m2Zn_MrJJUw3uPeiI2wbA_nCoHMVTkmdC0RrwXPTMx119soY4r--ZJuDo_7bCQcvlVi9LNYMDLSs" />
							</div>
							<div class="flex-1 flex flex-col justify-between py-1">
								<div>
									<h3
										class="font-bold text-slate-900 dark:text-white md:text-lg line-clamp-2 leading-snug group-hover:text-primary transition-colors">Major
										Road Repair Project to Begin Next Month in South Goa</h3>
									<p
										class="text-xs md:text-sm text-slate-500 dark:text-slate-400 mt-1">Department
										of Rural Development • South Goa - Canacona</p>
								</div>
								<span class="text-[11px] text-slate-400">18 hours ago</span>
							</div>
						</a> <a
							class="flex gap-4 p-4 bg-white dark:bg-card-dark rounded-2xl border border-slate-200 dark:border-slate-800 hover:border-primary/50 transition-colors group"
							href="#">
							<div
								class="w-24 h-24 sm:w-32 sm:h-32 flex-shrink-0 rounded-xl overflow-hidden border border-slate-200 dark:border-slate-700">
								<img alt="Environment Policy"
									class="w-full h-full object-cover group-hover:scale-110 transition-transform duration-500"
									src="https://lh3.googleusercontent.com/aida-public/AB6AXuA2miS3TIFHFVP2PZV8Qx50zFlm5fz5QXrrIdqgUqaSf_FkPn2HLLBHj9J6XN9R-yIY9HdWtYUZ2g5fJ56lYFdEXTgcWf2zuWd6Wlgl74GdsTxVngA3RvnsAIJ2-45GevNpU9INsAZngfnLFxzDHLlJoSPOBB5vxRJrIwGk2HNc_-oIwmx8v1Bzn9EbNeqHJKby4JiX40KFHtYy_DsvlFbE-w7Y8f4ZG4IK3Ovw6l65qdO1VY9ukvV9FE0t4EoC3QrnhtY4MRt4DOk" />
							</div>
							<div class="flex-1 flex flex-col justify-between py-1">
								<div>
									<h3
										class="font-bold text-slate-900 dark:text-white md:text-lg line-clamp-2 leading-snug group-hover:text-primary transition-colors">Government
										Announces New Policies to Curb Pollution in Coastal Areas</h3>
									<p
										class="text-xs md:text-sm text-slate-500 dark:text-slate-400 mt-1">Environmental
										Protection Agency • North Goa</p>
								</div>
								<span class="text-[11px] text-slate-400">1 day ago</span>
							</div>
						</a>
					</div>
				</section>
				<section>
					<div class="flex items-center justify-between mb-4">
						<h2
							class="text-lg font-bold flex items-center gap-2 dark:text-white">
							<span class="material-symbols-outlined text-primary">report_problem</span>
							Community Issues
						</h2>
						<a class="text-sm text-primary font-semibold hover:underline"
							href="#">View All</a>
					</div>
					<div class="grid grid-cols-1 md:grid-cols-2 gap-4">
						<div
							class="p-5 bg-white dark:bg-card-dark rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 transition-all">
							<div class="flex justify-between items-start mb-3">
								<span
									class="px-2 py-0.5 rounded-full bg-slate-100 dark:bg-slate-800 text-[10px] font-bold text-slate-500 dark:text-slate-400">Infrastructure</span>
								<span
									class="px-2 py-0.5 rounded-full bg-primary/10 text-primary text-[10px] font-bold">In
									Progress</span>
							</div>
							<h3
								class="font-bold text-slate-900 dark:text-white mb-2 leading-tight">Broken
								Street Light in Panjim</h3>
							<p
								class="text-xs text-slate-500 dark:text-slate-400 mb-4 line-clamp-2">Main
								lamp post at Miramar beach junction has been flickering for 3
								days.</p>
							<div
								class="flex items-center justify-between pt-4 border-t border-slate-100 dark:border-slate-800">
								<div class="flex items-center gap-4">
									<a
										class="flex items-center gap-1 text-slate-500 hover:text-primary transition-colors hover:underline"
										href="#"> <span class="material-symbols-outlined text-lg">thumb_up</span>
										<span class="text-xs font-bold">42</span>
									</a> <a
										class="flex items-center gap-1 text-slate-500 hover:text-primary transition-colors hover:underline"
										href="#"> <span class="material-symbols-outlined text-lg">chat_bubble</span>
										<span class="text-xs font-bold">8</span>
									</a>
								</div>
								<span class="text-[10px] text-slate-400">2 hours ago</span>
							</div>
						</div>
						<div
							class="p-5 bg-white dark:bg-card-dark rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 transition-all">
							<div class="flex justify-between items-start mb-3">
								<span
									class="px-2 py-0.5 rounded-full bg-slate-100 dark:bg-slate-800 text-[10px] font-bold text-slate-500 dark:text-slate-400">Sanitation</span>
								<span
									class="px-2 py-0.5 rounded-full bg-slate-100 dark:bg-slate-800 text-slate-400 text-[10px] font-bold">Pending</span>
							</div>
							<h3
								class="font-bold text-slate-900 dark:text-white mb-2 leading-tight">Overflowing
								Dustbin near Market</h3>
							<p
								class="text-xs text-slate-500 dark:text-slate-400 mb-4 line-clamp-2">The
								public bin near the municipal market hasn't been cleared for two
								days.</p>
							<div
								class="flex items-center justify-between pt-4 border-t border-slate-100 dark:border-slate-800">
								<div class="flex items-center gap-4">
									<a
										class="flex items-center gap-1 text-slate-500 hover:text-primary transition-colors hover:underline"
										href="#"> <span class="material-symbols-outlined text-lg">thumb_up</span>
										<span class="text-xs font-bold">128</span>
									</a> <a
										class="flex items-center gap-1 text-slate-500 hover:text-primary transition-colors hover:underline"
										href="#"> <span class="material-symbols-outlined text-lg">chat_bubble</span>
										<span class="text-xs font-bold">24</span>
									</a>
								</div>
								<span class="text-[10px] text-slate-400">5 hours ago</span>
							</div>
						</div>
					</div>
				</section>
			</div>
			<div class="space-y-8">
				<section
					class="bg-white dark:bg-card-dark rounded-2xl p-6 border border-slate-200 dark:border-slate-800 sticky top-8">
					<div class="flex items-center justify-between mb-6">
						<h2
							class="text-lg font-bold flex items-center gap-2 dark:text-white">
							<span class="material-symbols-outlined text-primary">groups</span>
							Community Projects
						</h2>
						<span
							class="bg-primary/10 text-primary text-[10px] font-bold px-2 py-1 rounded">Active
							Now</span>
					</div>
					<div class="space-y-6">
						<div
							class="pb-6 border-b border-slate-100 dark:border-slate-800 last:border-0 last:pb-0">
							<div class="flex items-start justify-between mb-2">
								<h4
									class="font-semibold text-slate-900 dark:text-white line-clamp-1">Solar
									Street Lights for Park</h4>
								<span
									class="bg-green-500/10 text-green-500 text-[10px] font-bold px-2 py-0.5 rounded">Completed</span>
							</div>
							<p
								class="text-xs text-slate-500 dark:text-slate-400 line-clamp-2 mb-4">Requesting
								eco-friendly solar lighting for the Central Community Park to
								improve safety at night.</p>
							<div class="flex items-center gap-4">
								<a
									class="flex items-center gap-1.5 text-xs font-medium text-slate-600 dark:text-slate-400 hover:text-primary transition-colors hover:underline"
									href="#"> <span class="material-symbols-outlined text-sm">thumb_up</span>
									240
								</a> <a
									class="flex items-center gap-1.5 text-xs font-medium text-slate-600 dark:text-slate-400 hover:text-primary transition-colors hover:underline"
									href="#"> <span class="material-symbols-outlined text-sm">chat_bubble</span>
									18
								</a>
								<div class="ml-auto flex -space-x-2">
									<img alt="User"
										class="w-6 h-6 rounded-full border-2 border-white dark:border-card-dark"
										src="https://lh3.googleusercontent.com/aida-public/AB6AXuDLOfMChdtjckpJlDmIF0EZJQdpGB2knnGrayTYTtX-1uVwGz7cLApGsGA6VS5hbUTWcNVUdhbugJRN13ZO4Ura4pkFWfTCyUgm6TBfw7geJBelM_SPgmRew3Pfq6GasMit8DPSOmNk_fgKFTrprfg22-vgQK9N37v_3Wh49Syf37F5gjoGTYhutgLgxBrUfJ03Udgf58DLq8mRAYif8f0J1ZfOVCn5j8Kh-UNVR-uIBYjHpOqWBrY2I7hinpRPjQm8DoMRn2z0Vrw" />
									<img alt="User"
										class="w-6 h-6 rounded-full border-2 border-white dark:border-card-dark"
										src="https://lh3.googleusercontent.com/aida-public/AB6AXuBjNDUzM4zFD_VscEIdsZsxcrdlmfIZk9O_ILVxSZBJXH_cmLwrqqYxtNwMTxlcK6w8UY1chHU04p3Vih2d0JYVNXjH4jcNIaB_FSzd-hDe4Sh9R2hMfaKI9fDBZx6ojVkmBKLLdZtwWwkUV9zTELkmvrcMoMFPJnkwAB-W-bSRQDZpYot8Gw91_4yA3_1DjFiAqPpgRQKJoyaAbP7kIl4QP9xVT7pxSf9bLhQ_-jl1d8MraqhpHSIFuqMvpL9RkYB-l13ACrDkUTA" />
									<div
										class="w-6 h-6 rounded-full bg-slate-100 dark:bg-slate-700 border-2 border-white dark:border-card-dark flex items-center justify-center text-[8px] font-bold">+12</div>
								</div>
							</div>
						</div>
						<div
							class="pb-6 border-b border-slate-100 dark:border-slate-800 last:border-0 last:pb-0">
							<div class="flex items-start justify-between mb-2">
								<h4
									class="font-semibold text-slate-900 dark:text-white line-clamp-1">Public
									Rainwater Harvesting</h4>
								<span
									class="bg-primary/10 text-primary text-[10px] font-bold px-2 py-0.5 rounded">Voting</span>
							</div>
							<p
								class="text-xs text-slate-500 dark:text-slate-400 line-clamp-2 mb-4">Implementing
								harvesting systems in public buildings to combat summer water
								shortage.</p>
							<div class="flex items-center gap-4">
								<a
									class="flex items-center gap-1.5 text-xs font-medium text-primary bg-primary/10 px-3 py-1.5 rounded-full hover:bg-primary/20 hover:underline transition-all"
									href="#"> <span class="material-symbols-outlined text-sm">thumb_up</span>
									Voted (1.2k)
								</a> <a
									class="flex items-center gap-1.5 text-xs font-medium text-slate-600 dark:text-slate-400 hover:text-primary transition-colors hover:underline"
									href="#"> <span class="material-symbols-outlined text-sm">chat_bubble</span>
									56
								</a>
							</div>
						</div>
						<div
							class="pb-6 border-b border-slate-100 dark:border-slate-800 last:border-0 last:pb-0">
							<div class="flex items-start justify-between mb-2">
								<h4
									class="font-semibold text-slate-900 dark:text-white line-clamp-1">Youth
									Sports Center Upgrade</h4>
								<span
									class="bg-blue-500/10 text-blue-500 text-[10px] font-bold px-2 py-0.5 rounded">In
									Review</span>
							</div>
							<p
								class="text-xs text-slate-500 dark:text-slate-400 line-clamp-2 mb-4">New
								equipment and surface renovation for the local basketball court
								and gym area.</p>
							<div class="flex items-center gap-4">
								<a
									class="flex items-center gap-1.5 text-xs font-medium text-slate-600 dark:text-slate-400 hover:text-primary transition-colors hover:underline"
									href="#"> <span class="material-symbols-outlined text-sm">thumb_up</span>
									890
								</a> <a
									class="flex items-center gap-1.5 text-xs font-medium text-slate-600 dark:text-slate-400 hover:text-primary transition-colors hover:underline"
									href="#"> <span class="material-symbols-outlined text-sm">chat_bubble</span>
									32
								</a>
							</div>
						</div>
					</div>
					<a
						class="block text-center w-full mt-6 py-3 rounded-xl border-2 border-dashed border-slate-200 dark:border-slate-800 text-slate-500 dark:text-slate-400 text-sm font-medium hover:border-primary hover:text-primary transition-all hover:bg-primary/5 hover:underline"
						href="#"> View All Ideas </a>
				</section>
			</div>
		</div>
	</main>
	<a
		class="fixed bottom-8 right-8 w-16 h-16 bg-primary text-white rounded-full shadow-2xl shadow-primary/40 flex items-center justify-center hover:scale-110 active:scale-95 transition-all z-[60] group hover:underline"
		href="#"> <span class="material-symbols-outlined text-4xl">add</span>
		<span
		class="absolute right-full mr-4 bg-slate-900 text-white text-xs font-bold px-3 py-2 rounded-lg whitespace-nowrap opacity-0 group-hover:opacity-100 transition-opacity">
			New Submission </span>
	</a>
	<nav
		class="lg:hidden fixed bottom-0 left-0 right-0 bg-white dark:bg-card-dark border-t border-slate-200 dark:border-slate-800 flex justify-around items-center py-2 px-4 z-50">
		<a
			class="flex flex-col items-center gap-1 text-primary hover:underline"
			href="#"> <span class="material-symbols-outlined">home</span> <span
			class="text-[10px] font-medium">Home</span>
		</a> <a
			class="flex flex-col items-center gap-1 text-slate-400 hover:text-primary hover:underline"
			href="#"> <span class="material-symbols-outlined">campaign</span>
			<span class="text-[10px] font-medium">News</span>
		</a> <a
			class="w-12 h-12 bg-primary -mt-8 rounded-full flex items-center justify-center text-white shadow-lg border-4 border-white dark:border-background-dark hover:scale-110 transition-transform"
			href="#"> <span class="material-symbols-outlined">add</span>
		</a> <a
			class="flex flex-col items-center gap-1 text-slate-400 hover:text-primary hover:underline"
			href="#"> <span class="material-symbols-outlined">insights</span>
			<span class="text-[10px] font-medium">Stats</span>
		</a> <a
			class="flex flex-col items-center gap-1 text-slate-400 hover:text-primary hover:underline"
			href="#"> <span class="material-symbols-outlined">person</span> <span
			class="text-[10px] font-medium">Profile</span>
		</a>
	</nav>

</body>
</html>