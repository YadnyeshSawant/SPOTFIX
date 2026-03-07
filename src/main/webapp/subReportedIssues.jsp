<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html class="dark" lang="en">
<head>
<meta charset="utf-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<title>Updated Reported Issues List View</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F59E0B", // Vibrant Orange
					"background-light" : "#F3F4F6",
					"background-dark" : "#1E2127",
					"card-dark" : "#282C34",
					"sidebar-dark" : "#171A1F"
				},
				fontFamily : {
					display : [ "Inter", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "0.75rem",
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        body { font-family: 'Inter', sans-serif; overflow: hidden; }
        .custom-scrollbar::-webkit-scrollbar { width: 6px; }
        .custom-scrollbar::-webkit-scrollbar-track { background: transparent; }
        .custom-scrollbar::-webkit-scrollbar-thumb { background: #3f4451; border-radius: 10px; }
        .sidebar-item-active { background: linear-gradient(90deg, rgba(245, 158, 11, 0.1) 0%, rgba(245, 158, 11, 0) 100%); border-right: 4px solid #F59E0B; }
        .material-symbols-outlined {
            font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 24;
        }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 h-screen flex">
	<aside
		class="w-64 flex-shrink-0 bg-white dark:bg-sidebar-dark border-r border-slate-200 dark:border-slate-800 flex flex-col">
		<div class="p-6">
			<div
				class="bg-gradient-to-br from-indigo-600 to-purple-600 p-4 rounded-xl flex items-center space-x-3 mb-8 shadow-lg">
				<div
					class="w-10 h-10 rounded-full bg-white/20 flex items-center justify-center font-bold text-white">G</div>
				<div>
					<h3
						class="text-xs font-bold text-white uppercase tracking-wider leading-tight">Gomes</h3>
					<p
						class="text-[10px] text-indigo-100 opacity-80 uppercase tracking-tight">Sub-Dept
						Coordinator</p>
				</div>
			</div>
			<nav class="space-y-1">
				<a
					class="flex items-center px-4 py-3 text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors group"
					href="subDeptCordinatorDashboard.jsp"> <span class="material-symbols-outlined mr-3 text-xl">dashboard</span>
					<span class="text-sm font-medium">Dashboard</span>
				</a> <a
					class="flex items-center px-4 py-3 sidebar-item-active text-primary group"
					href="#"> <span class="material-symbols-outlined mr-3 text-xl">report_problem</span>
					<span class="text-sm font-medium">Reported Issues</span>
				</a> <a
					class="flex items-center px-4 py-3 text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors group"
					href="#"> <span class="material-symbols-outlined mr-3 text-xl">check_circle</span>
					<span class="text-sm font-medium">Resolved Cases</span>
				</a> <a
					class="flex items-center px-4 py-3 text-slate-500 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-slate-800 rounded-lg transition-colors group"
					href="#"> <span class="material-symbols-outlined mr-3 text-xl">person</span>
					<span class="text-sm font-medium">Profile</span>
				</a>
			</nav>
		</div>
		<div
			class="mt-auto p-6 border-t border-slate-200 dark:border-slate-800">
			<a
				class="flex items-center px-4 py-3 text-red-500 hover:bg-red-50 dark:hover:bg-red-500/10 rounded-lg transition-colors group"
				href="#"> <span class="material-symbols-outlined mr-3 text-xl">logout</span>
				<span class="text-sm font-medium">Log Out</span>
			</a>
		</div>
	</aside>
	<main class="flex-1 flex flex-col h-screen">
		<header
			class="h-16 border-b border-slate-200 dark:border-slate-800 flex items-center justify-between px-8 flex-shrink-0">
			<div class="flex items-center space-x-2">
				<span class="text-slate-900 dark:text-white font-semibold text-sm">Reported
					Issues</span>
			</div>
			<div class="flex items-center space-x-4">
				<button
					class="w-10 h-10 rounded-full bg-slate-100 dark:bg-slate-800 flex items-center justify-center text-slate-600 dark:text-slate-300 hover:bg-slate-200 dark:hover:bg-slate-700 transition-colors">
					<span class="material-symbols-outlined text-xl">search</span>
				</button>
			</div>
		</header>
		<div class="flex-1 overflow-y-auto custom-scrollbar p-8">
			<div class="max-w-4xl mx-auto">
				<div class="mb-8 flex items-center justify-between">
					<div>
						<h1 class="text-2xl font-bold text-slate-900 dark:text-white mb-1">Reported
							Issues</h1>
						<p class="text-slate-500 dark:text-slate-400 text-sm">Review
							and verify issues submitted by citizens</p>
					</div>
				</div>
				<div class="space-y-4">
					<a
						class="block bg-white dark:bg-card-dark p-5 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 hover:shadow-md transition-all group"
						href="subIssueReview.jsp">
						<div class="flex items-center justify-between">
							<div class="flex items-center space-x-4">
								<div
									class="w-12 h-12 rounded-xl bg-blue-100 dark:bg-blue-500/10 flex items-center justify-center text-blue-600 dark:text-blue-400">
									<span class="material-symbols-outlined">water_drop</span>
								</div>
								<div>
									<div class="flex items-center space-x-2 mb-1">
										<span
											class="text-xs font-bold text-slate-400 uppercase tracking-widest">#WTR-402</span>
										<span class="text-slate-300 dark:text-slate-600">•</span> <span
											class="text-xs font-medium text-slate-500 dark:text-slate-400">Mar
											22, 2025</span>
									</div>
									<h3
										class="text-base font-bold text-slate-900 dark:text-white group-hover:text-primary transition-colors">Water
										Leakage in Main Square Pipe</h3>
								</div>
							</div>
							<div class="flex items-center space-x-6">
								<span
									class="px-3 py-1 bg-orange-100 dark:bg-orange-500/20 text-orange-600 dark:text-orange-400 text-[10px] font-bold rounded-full uppercase tracking-wider">PENDING</span>
								<span
									class="material-symbols-outlined text-slate-300 dark:text-slate-600 group-hover:text-primary transition-colors">chevron_right</span>
							</div>
						</div>
					</a> <a
						class="block bg-white dark:bg-card-dark p-5 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 hover:shadow-md transition-all group"
						href="#">
						<div class="flex items-center justify-between">
							<div class="flex items-center space-x-4">
								<div
									class="w-12 h-12 rounded-xl bg-orange-100 dark:bg-orange-500/10 flex items-center justify-center text-orange-600 dark:text-orange-400">
									<span class="material-symbols-outlined">electric_bolt</span>
								</div>
								<div>
									<div class="flex items-center space-x-2 mb-1">
										<span
											class="text-xs font-bold text-slate-400 uppercase tracking-widest">#PWR-512</span>
										<span class="text-slate-300 dark:text-slate-600">•</span> <span
											class="text-xs font-medium text-slate-500 dark:text-slate-400">Mar
											21, 2025</span>
									</div>
									<h3
										class="text-base font-bold text-slate-900 dark:text-white group-hover:text-primary transition-colors">Street
										Light Malfunction</h3>
								</div>
							</div>
							<div class="flex items-center space-x-6">
								<span
									class="px-3 py-1 bg-green-100 dark:bg-green-500/20 text-green-600 dark:text-green-400 text-[10px] font-bold rounded-full uppercase tracking-wider">APPROVED</span>
								<span
									class="material-symbols-outlined text-slate-300 dark:text-slate-600 group-hover:text-primary transition-colors">chevron_right</span>
							</div>
						</div>
					</a> <a
						class="block bg-white dark:bg-card-dark p-5 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 hover:shadow-md transition-all group"
						href="#">
						<div class="flex items-center justify-between">
							<div class="flex items-center space-x-4">
								<div
									class="w-12 h-12 rounded-xl bg-green-100 dark:bg-green-500/10 flex items-center justify-center text-green-600 dark:text-green-400">
									<span class="material-symbols-outlined">delete</span>
								</div>
								<div>
									<div class="flex items-center space-x-2 mb-1">
										<span
											class="text-xs font-bold text-slate-400 uppercase tracking-widest">#WST-109</span>
										<span class="text-slate-300 dark:text-slate-600">•</span> <span
											class="text-xs font-medium text-slate-500 dark:text-slate-400">Mar
											20, 2025</span>
									</div>
									<h3
										class="text-base font-bold text-slate-900 dark:text-white group-hover:text-primary transition-colors">Garbage
										Overflow near Market</h3>
								</div>
							</div>
							<div class="flex items-center space-x-6">
								<span
									class="px-3 py-1 bg-blue-100 dark:bg-blue-500/20 text-blue-600 dark:text-blue-400 text-[10px] font-bold rounded-full uppercase tracking-wider">IN
									PROCESS</span> <span
									class="material-symbols-outlined text-slate-300 dark:text-slate-600 group-hover:text-primary transition-colors">chevron_right</span>
							</div>
						</div>
					</a> <a
						class="block bg-white dark:bg-card-dark p-5 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm hover:border-primary/50 hover:shadow-md transition-all group"
						href="#">
						<div class="flex items-center justify-between">
							<div class="flex items-center space-x-4">
								<div
									class="w-12 h-12 rounded-xl bg-purple-100 dark:bg-purple-500/10 flex items-center justify-center text-purple-600 dark:text-purple-400">
									<span class="material-symbols-outlined">construction</span>
								</div>
								<div>
									<div class="flex items-center space-x-2 mb-1">
										<span
											class="text-xs font-bold text-slate-400 uppercase tracking-widest">#RDS-204</span>
										<span class="text-slate-300 dark:text-slate-600">•</span> <span
											class="text-xs font-medium text-slate-500 dark:text-slate-400">Mar
											19, 2025</span>
									</div>
									<h3
										class="text-base font-bold text-slate-900 dark:text-white group-hover:text-primary transition-colors">Pothole
										Repair in Sector 4</h3>
								</div>
							</div>
							<div class="flex items-center space-x-6">
								<span
									class="px-3 py-1 bg-teal-100 dark:bg-teal-500/20 text-teal-600 dark:text-teal-400 text-[10px] font-bold rounded-full uppercase tracking-wider">COMPLETED</span>
								<span
									class="material-symbols-outlined text-slate-300 dark:text-slate-600 group-hover:text-primary transition-colors">chevron_right</span>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</main>

</body>
</html>