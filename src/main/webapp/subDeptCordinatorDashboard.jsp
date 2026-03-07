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

<html lang="en">
<head></head>
<body
	class="text-slate-100 min-h-screen flex selection:bg-orange-500/30">
	```html



	<meta charset="utf-8" />
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<title>Sub-Department Coordinator Dashboard - <%=user.getFull_name()%></title>
	<link
		href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
		rel="stylesheet" />
	<link
		href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
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
						"dark-charcoal" : "#2E3137",
						"card-dark" : "#373A40",
						"accent-orange" : "#F59E0B",
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
        :root {
            --bg-color: #2E3137;
            --coordinator-gradient: linear-gradient(135deg, #6366f1 0%, #a855f7 100%);
        }
        body { font-family: 'Inter', sans-serif; background-color: var(--bg-color); }
        .sidebar-item-active { border-right: 4px solid #F59E0B; background: rgba(245, 158, 11, 0.15); }
        .custom-scrollbar::-webkit-scrollbar { width: 6px; }
        .custom-scrollbar::-webkit-scrollbar-track { background: transparent; }
        .custom-scrollbar::-webkit-scrollbar-thumb { background: #4B5563; border-radius: 10px; }
        .coordinator-accent-bg { background: var(--coordinator-gradient); }
    </style>


	<aside
		class="w-64 bg-[#25282D] border-r border-white/10 flex flex-col fixed h-full z-20">
		<div class="p-4 border-b border-white/10">
			<div
				class="coordinator-accent-bg rounded-xl p-3 flex items-center space-x-3 shadow-lg shadow-indigo-500/10">
				<div
					class="w-10 h-10 rounded-full bg-white/20 backdrop-blur-md flex items-center justify-center text-white font-bold text-lg border border-white/30">
					G</div>
				<div>
					<h2 class="font-bold text-white text-sm leading-tight"><%=user.getFull_name()%></h2>
					<p
						class="text-[10px] text-white/80 font-medium uppercase tracking-wider">Sub-Dept
						Coordinator</p>
				</div>
			</div>
		</div>
		<nav class="flex-grow py-6">
			<ul class="space-y-1">
				<li><a
					class="flex items-center px-6 py-3 text-accent-orange sidebar-item-active font-medium"
					href="subDeptCordinatorDashboard.jsp"> <span class="material-symbols-outlined mr-3">dashboard</span>
						Dashboard
				</a></li>
				<li><a
					class="flex items-center px-6 py-3 text-slate-300 hover:bg-white/5 transition-colors"
					href="subReportedIssues.jsp"> <span
						class="material-symbols-outlined mr-3">report_problem</span>
						Reported Issues
				</a></li>
				<li><a
					class="flex items-center px-6 py-3 text-slate-300 hover:bg-white/5 transition-colors"
					href="/resolved-cases"> <span
						class="material-symbols-outlined mr-3">task_alt</span> Resolved
						Cases
				</a></li>
				<li><a
					class="flex items-center px-6 py-3 text-slate-300 hover:bg-white/5 transition-colors"
					href="/profile"> <span class="material-symbols-outlined mr-3">person</span>
						Profile
				</a></li>
			</ul>
		</nav>
		<div class="p-6 border-t border-white/10">
			<a
				class="flex items-center text-red-400 hover:text-red-300 font-medium transition-colors"
				href="/logout"> <span class="material-symbols-outlined mr-3">logout</span>
				Log Out
			</a>
		</div>
	</aside>
	<main class="flex-grow ml-64 p-8 bg-dark-charcoal">
		<header class="mb-8 flex justify-between items-center">
			<div>
				<h1 class="text-2xl font-bold text-white">Coordinator Dashboard</h1>
				<p class="text-slate-400">Welcome back, <%=user.getFull_name()%>. Monitoring
					sub-department activity.</p>
			</div>
			<div class="flex items-center space-x-4">
				<button
					class="p-2 rounded-full bg-white/5 text-slate-300 hover:bg-white/10 transition-colors">
					<span class="material-symbols-outlined">search</span>
				</button>
				<div class="relative">
					<span class="material-symbols-outlined text-slate-400">notifications</span>
					<span
						class="absolute top-0 right-0 w-2 h-2 bg-accent-orange rounded-full border-2 border-dark-charcoal"></span>
				</div>
			</div>
		</header>
		<section class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-10">
			<div
				class="bg-card-dark p-6 rounded-xl border border-white/10 shadow-lg">
				<div class="flex items-center justify-between mb-4">
					<span
						class="material-symbols-outlined text-accent-orange bg-orange-500/10 p-2 rounded-lg">fact_check</span>
					<span class="text-green-400 text-xs font-bold">+12%</span>
				</div>
				<h3
					class="text-slate-400 text-sm font-medium uppercase tracking-wider">Pending
					Verification</h3>
				<p class="text-3xl font-bold mt-1 text-white">24</p>
			</div>
			<div
				class="bg-card-dark p-6 rounded-xl border border-white/10 shadow-lg">
				<div class="flex items-center justify-between mb-4">
					<span
						class="material-symbols-outlined text-blue-400 bg-blue-500/10 p-2 rounded-lg">engineering</span>
					<span class="text-slate-400 text-xs font-bold">Stable</span>
				</div>
				<h3
					class="text-slate-400 text-sm font-medium uppercase tracking-wider">Ongoing
					Repairs</h3>
				<p class="text-3xl font-bold mt-1 text-white">15</p>
			</div>
			<a
				class="bg-accent-orange hover:bg-orange-600 transition-all p-6 rounded-xl shadow-xl flex flex-col justify-between group transform hover:-translate-y-1"
				href="/verify-reports">
				<div class="flex items-center justify-between">
					<span class="material-symbols-outlined text-white">verified</span>
					<span
						class="material-symbols-outlined text-white opacity-0 group-hover:opacity-100 transition-opacity">arrow_forward</span>
				</div>
				<div>
					<h3
						class="text-white/80 text-sm font-medium uppercase tracking-wider">Quick
						Action</h3>
					<p class="text-white text-xl font-bold">Verify New Reports</p>
				</div>
			</a>
		</section>
		<section>
			<div class="flex items-center justify-between mb-6">
				<h2 class="text-xl font-bold text-white flex items-center">
					Recent Issues Feed <span
						class="ml-3 px-2 py-0.5 text-xs bg-white/10 text-slate-300 rounded-full font-normal">Live
						Updates</span>
				</h2>
				<div class="flex space-x-2">
					<button
						class="px-4 py-2 text-sm font-medium rounded-lg bg-card-dark border border-white/10 text-slate-300 hover:bg-white/5 transition-colors flex items-center">
						<span class="material-symbols-outlined text-sm mr-2">filter_list</span>
						Filter
					</button>
					<button
						class="px-4 py-2 text-sm font-medium rounded-lg bg-card-dark border border-white/10 text-slate-300 hover:bg-white/5 transition-colors flex items-center">
						<span class="material-symbols-outlined text-sm mr-2">sort</span>
						Sort By
					</button>
				</div>
			</div>
			<div class="grid grid-cols-1 xl:grid-cols-2 gap-6">
				<a
					class="flex bg-card-dark border border-white/10 rounded-xl overflow-hidden hover:border-accent-orange/50 transition-all group"
					href="/issue/water-leakage-panaji">
					<div class="w-48 h-full bg-slate-800 relative flex-shrink-0">
						<img alt="Real water leakage on a street"
							class="w-full h-full object-cover grayscale-[20%] group-hover:grayscale-0 transition-all"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuBdFqAQ-WmrcJqGr5PFgNiwdEsN4EZFZzgo7MD-gurJC6svUBI0XNE-iOs8qVLhukchTWlx_q-0gvEV13SfyWeUGginYD1Y_iv-IpJpLzRoGmXnqmQWpbDFs3C-r5cuw4oRtiI3r4FZfbRRdDRqtUdYByICcA6V6666FRQPllwfT_bAMopHOM4yBAKfmMmeO3lTT5yv8k2OkHWMLCQpMc_-Z9xx9iL6O_MH7Rnj37VG3QDMm1N_KQTccXtWUHA97q8w4c6Xg-PSWUM" />
						<div
							class="absolute inset-0 bg-black/30 group-hover:bg-black/10 transition-colors"></div>
					</div>
					<div class="p-6 flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-lg font-bold text-white leading-tight">Water
									Leakage in Main Square</h3>
								<span
									class="px-2 py-1 text-[10px] uppercase tracking-wider font-bold rounded bg-blue-900/40 text-blue-300 border border-blue-800/50">In-Progress</span>
							</div>
							<p class="text-sm text-slate-400 flex items-center mt-2">
								<span class="material-symbols-outlined text-sm mr-1">location_on</span>
								Panaji, Goa
							</p>
							<p class="text-xs text-slate-500 mt-1">Reported: 16 Mar 2025
								• ID: #WTR-402</p>
						</div>
						<div class="mt-4 flex items-center justify-between">
							<span
								class="px-3 py-1 rounded-full text-xs font-bold bg-red-900/40 text-red-400 border border-red-800/50">High
								Priority</span> <span
								class="material-symbols-outlined text-slate-500 group-hover:text-accent-orange transition-colors">chevron_right</span>
						</div>
					</div>
				</a> <a
					class="flex bg-card-dark border border-white/10 rounded-xl overflow-hidden hover:border-accent-orange/50 transition-all group"
					href="/issue/streetlight-porvorim">
					<div class="w-48 h-full bg-slate-800 relative flex-shrink-0">
						<img alt="Real broken street light at dusk"
							class="w-full h-full object-cover grayscale-[20%] group-hover:grayscale-0 transition-all"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuC_pmIiMjfjMzEjbx0DCKoeYwqNHPjbMbBMwkedUpY4vpEpYR24ofOxph0HtjyDpBlYOIHBqK9M-LbreG_hgzS0XiSzL922_mQmneBFSTbypX6lMIU7hN3-mCSyq9abWJmvWB7VZrCotYxcYfbCESHwx9LJU7_3V0r45QWSfhh5LgzhcNx6RqCGzKeTRWw3DwOvsKkkNpT_JYSiH8rAZpTEt8q7S2jU4cn0HlOxWNqcDGHUtFJcAdEZpiYY1Io30he0Q5x27XsSYcI" />
						<div
							class="absolute inset-0 bg-black/30 group-hover:bg-black/10 transition-colors"></div>
					</div>
					<div class="p-6 flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-lg font-bold text-white leading-tight">Broken
									Street Lights - Sector 4</h3>
								<span
									class="px-2 py-1 text-[10px] uppercase tracking-wider font-bold rounded bg-yellow-900/40 text-yellow-300 border border-yellow-800/50">Verifying</span>
							</div>
							<p class="text-sm text-slate-400 flex items-center mt-2">
								<span class="material-symbols-outlined text-sm mr-1">location_on</span>
								Porvorim, Goa
							</p>
							<p class="text-xs text-slate-500 mt-1">Reported: 18 Mar 2025
								• ID: #LGT-115</p>
						</div>
						<div class="mt-4 flex items-center justify-between">
							<span
								class="px-3 py-1 rounded-full text-xs font-bold bg-orange-900/40 text-orange-400 border border-orange-800/50">Moderate
								Priority</span> <span
								class="material-symbols-outlined text-slate-500 group-hover:text-accent-orange transition-colors">chevron_right</span>
						</div>
					</div>
				</a> <a
					class="flex bg-card-dark border border-white/10 rounded-xl overflow-hidden hover:border-accent-orange/50 transition-all group"
					href="/issue/pothole-margao">
					<div class="w-48 h-full bg-slate-800 relative flex-shrink-0">
						<img alt="Large pothole on an asphalt road in Goa"
							class="w-full h-full object-cover grayscale-[20%] group-hover:grayscale-0 transition-all"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuBnwPgWRm6qCqUF_Mt-x8PDTaZFGAmCrv-MQNZT9lU7uwu3JRkMJSutFJrhWEIQMHjyGUcbBN7X748Ubun7Uuy1J8yfIdGnoTRuQ0FJvgJn2n_cXxOJelYwRIguCKeV2b73BshGS2tIS4QHVLtcaQDntUWLCUcCPSxUVODVE_MK3oVtIAtegect_V0NKH0jIl9L6d1v1V-XvxyO_tTevMFTunof9pdZKRCBI6g6gDm5BVCA2XWP_uWb97XgulWEXh4yQaT36GH6X3A" />
						<div
							class="absolute inset-0 bg-black/30 group-hover:bg-black/10 transition-colors"></div>
					</div>
					<div class="p-6 flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-lg font-bold text-white leading-tight">Severe
									Pothole Cluster</h3>
								<span
									class="px-2 py-1 text-[10px] uppercase tracking-wider font-bold rounded bg-green-900/40 text-green-300 border border-green-800/50">Registered</span>
							</div>
							<p class="text-sm text-slate-400 flex items-center mt-2">
								<span class="material-symbols-outlined text-sm mr-1">location_on</span>
								Margao, Goa
							</p>
							<p class="text-xs text-slate-500 mt-1">Reported: 19 Mar 2025
								• ID: #RD-882</p>
						</div>
						<div class="mt-4 flex items-center justify-between">
							<span
								class="px-3 py-1 rounded-full text-xs font-bold bg-red-900/40 text-red-400 border border-red-800/50">High
								Priority</span> <span
								class="material-symbols-outlined text-slate-500 group-hover:text-accent-orange transition-colors">chevron_right</span>
						</div>
					</div>
				</a> <a
					class="flex bg-card-dark border border-white/10 rounded-xl overflow-hidden hover:border-accent-orange/50 transition-all group"
					href="/issue/garbage-mapusa">
					<div class="w-48 h-full bg-slate-800 relative flex-shrink-0">
						<img alt="Garbage accumulation on the side of a road"
							class="w-full h-full object-cover grayscale-[20%] group-hover:grayscale-0 transition-all"
							src="https://lh3.googleusercontent.com/aida-public/AB6AXuA82TI1Y4qwQlp8c-s816R7rmfusKf4hasl-uf7oUidNyk9Sthle5ULxp8bhZKSz-22HQK2ym163buC5i9jXPDcrN6Kum5R97HVijtrmXn9YQ8HyXy_d8pPpXXNfuZ2gSfZyjUObDhgyExwllk4C6uP6fORKpfsxb46Wy0rEj9eSbihpdElJNtxw8F9brxA2-XkTZj2aLqltQnQ_9seCvcTbxLYVr9rcP2j1CmaxgAIm2YFrh8YW22WxKeuSt3A2fjiRDpE3_Z-Qp4" />
						<div
							class="absolute inset-0 bg-black/30 group-hover:bg-black/10 transition-colors"></div>
					</div>
					<div class="p-6 flex-grow flex flex-col justify-between">
						<div>
							<div class="flex justify-between items-start">
								<h3 class="text-lg font-bold text-white leading-tight">Garbage
									Accumulation</h3>
								<span
									class="px-2 py-1 text-[10px] uppercase tracking-wider font-bold rounded bg-slate-700/60 text-slate-300 border border-slate-600/50">Completed</span>
							</div>
							<p class="text-sm text-slate-400 flex items-center mt-2">
								<span class="material-symbols-outlined text-sm mr-1">location_on</span>
								Mapusa, Goa
							</p>
							<p class="text-xs text-slate-500 mt-1">Reported: 12 Mar 2025
								• ID: #ENV-091</p>
						</div>
						<div class="mt-4 flex items-center justify-between">
							<span
								class="px-3 py-1 rounded-full text-xs font-bold bg-slate-800/50 text-slate-400 border border-slate-700/50">Low
								Priority</span> <span
								class="material-symbols-outlined text-slate-500 group-hover:text-accent-orange transition-colors">chevron_right</span>
						</div>
					</div>
				</a>
			</div>
			<div class="mt-8 flex justify-center">
				<a
					class="flex items-center space-x-2 text-accent-orange font-semibold hover:text-orange-400 transition-colors"
					href="/reported-issues"> <span>View all reported issues</span>
					<span class="material-symbols-outlined text-sm">arrow_forward</span>
				</a>
			</div>
		</section>
	</main>
	<div class="fixed bottom-8 right-8 xl:hidden">
		<a
			class="w-14 h-14 bg-accent-orange text-white rounded-full shadow-2xl flex items-center justify-center hover:scale-110 transition-transform active:scale-95"
			href="/report-new"> <span class="material-symbols-outlined">add</span>
		</a>
	</div>

</body>
</html>