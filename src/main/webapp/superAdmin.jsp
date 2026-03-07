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
<title>Refined Super Admin Dashboard - Goa Citizen Portal</title>
<script
	src="https://cdn.tailwindcss.com?plugins=forms,typography,container-queries"></script>
<link
	href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&amp;display=swap"
	rel="stylesheet" />
<link
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0&amp;display=swap"
	rel="stylesheet" />
<script>
	tailwind.config = {
		darkMode : "class",
		theme : {
			extend : {
				colors : {
					primary : "#F59E0B",
					"background-light" : "#F9FAFB",
					"background-dark" : "#1F2228",
					"card-dark" : "#2E3137",
				},
				fontFamily : {
					display : [ "Plus Jakarta Sans", "sans-serif" ],
				},
				borderRadius : {
					DEFAULT : "12px",
				},
			},
		},
	};
</script>
<style type="text/tailwindcss">
        @layer base {
            body { font-family: 'Plus Jakarta Sans', sans-serif; }
        }
        .sidebar-gradient {
            background: linear-gradient(135deg, #6366f1 0%, #a855f7 100%);
        }
        ::-webkit-scrollbar { width: 6px; }
        ::-webkit-scrollbar-track { background: transparent; }
        ::-webkit-scrollbar-thumb { background: #4B5563; border-radius: 10px; }
        .active-nav {
            background: rgba(245, 158, 11, 0.1);
            border-left: 4px solid #F59E0B;
            color: #F59E0B;
        }
    </style>
</head>
<body
	class="bg-background-light dark:bg-background-dark text-slate-900 dark:text-slate-100 min-h-screen flex">
	<aside
		class="w-72 bg-white dark:bg-card-dark border-r border-slate-200 dark:border-slate-800 flex flex-col fixed h-full z-20">
		<div class="sidebar-gradient p-8 text-white">
			<h2 class="text-2xl font-bold tracking-tight"><%= user.getFull_name()%></h2>
			<p class="text-white/80 text-sm font-medium mt-1">Super Admin</p>
		</div>
		<nav class="flex-1 px-4 py-6 space-y-2 overflow-y-auto">
			<a
				class="flex items-center gap-3 px-4 py-3 rounded-lg text-sm font-medium transition-all active-nav group"
				href="/dashboard"> <span
				class="material-symbols-outlined text-xl">dashboard</span> Admin
				Dashboard
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-lg text-sm font-medium transition-all hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-600 dark:text-slate-400 hover:text-primary dark:hover:text-primary group"
				href="/manage-citizens"> <span
				class="material-symbols-outlined text-xl">group</span> Manage
				Citizens
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-lg text-sm font-medium transition-all hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-600 dark:text-slate-400 hover:text-primary dark:hover:text-primary group"
				href="/manage-departments"> <span
				class="material-symbols-outlined text-xl">business</span> Manage
				Departments
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-lg text-sm font-medium transition-all hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-600 dark:text-slate-400 hover:text-primary dark:hover:text-primary group"
				href="/manage-coordinators"> <span
				class="material-symbols-outlined text-xl">person_outline</span>
				Manage Department Coordinators
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-lg text-sm font-medium transition-all hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-600 dark:text-slate-400 hover:text-primary dark:hover:text-primary group"
				href="/manage-sub-coordinators"> <span
				class="material-symbols-outlined text-xl">supervisor_account</span>
				Manage Sub Department Coordinators
			</a>
		</nav>
		<div class="p-4 border-t border-slate-200 dark:border-slate-800">
			<a
				class="flex items-center gap-3 px-4 py-3 rounded-lg text-sm font-medium transition-all text-primary hover:bg-orange-50 dark:hover:bg-orange-900/10"
				href="/logout"> <span class="material-symbols-outlined text-xl">logout</span>
				Log Out
			</a>
		</div>
	</aside>
	<main class="flex-1 ml-72">
		<header
			class="h-16 border-b border-slate-200 dark:border-slate-800 flex items-center justify-between px-8 bg-white/50 dark:bg-card-dark/50 backdrop-blur-md sticky top-0 z-10">
			<div class="flex items-center gap-4">
				<h1 class="text-lg font-semibold dark:text-white">Management
					Dashboard</h1>
				<span class="text-slate-400 dark:text-slate-500">/</span> <span
					class="text-sm text-slate-500">Overview</span>
			</div>
			<div class="flex items-center gap-4">
				<div class="relative">
					<span
						class="material-symbols-outlined absolute left-3 top-1/2 -translate-y-1/2 text-slate-400 text-lg">search</span>
					<input
						class="pl-10 pr-4 py-1.5 bg-slate-100 dark:bg-slate-800 border-none rounded-full text-sm focus:ring-2 focus:ring-primary w-64 text-slate-900 dark:text-slate-100"
						placeholder="Search data..." type="text" />
				</div>
				<a
					class="p-2 rounded-full hover:bg-slate-100 dark:hover:bg-slate-800 text-slate-500"
					href="/notifications"> <span class="material-symbols-outlined">notifications</span>
				</a> <a
					class="w-8 h-8 rounded-full bg-primary flex items-center justify-center text-white font-bold text-xs"
					href="/profile"> RG </a>
			</div>
		</header>
		<div class="p-8">
			<div
				class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-2 gap-6 mb-8">
				<a
					class="bg-white dark:bg-card-dark p-6 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm transition-transform hover:-translate-y-1 block"
					href="/registered-citizens">
					<div class="flex justify-between items-start mb-4">
						<div class="p-2 bg-blue-100 dark:bg-blue-900/30 rounded-lg">
							<span
								class="material-symbols-outlined text-blue-600 dark:text-blue-400">people</span>
						</div>
						<span class="text-xs font-semibold text-emerald-500">+12.5%</span>
					</div>
					<h3
						class="text-slate-500 dark:text-slate-400 text-xs font-bold uppercase tracking-wider">Total
						Registered Citizens</h3>
					<p class="text-2xl font-bold mt-1 dark:text-white">12,450</p>
				</a> <a
					class="bg-white dark:bg-card-dark p-6 rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm transition-transform hover:-translate-y-1 block"
					href="/pending-issues">
					<div class="flex justify-between items-start mb-4">
						<div class="p-2 bg-orange-100 dark:bg-orange-900/30 rounded-lg">
							<span class="material-symbols-outlined text-primary">report_problem</span>
						</div>
						<span class="text-xs font-semibold text-red-500">-2 active</span>
					</div>
					<h3
						class="text-slate-500 dark:text-slate-400 text-xs font-bold uppercase tracking-wider">Pending
						Issues</h3>
					<p class="text-2xl font-bold mt-1 dark:text-white">84</p>
				</a>
			</div>
			<div
				class="bg-white dark:bg-card-dark rounded-2xl border border-slate-200 dark:border-slate-800 shadow-sm overflow-hidden">
				<div
					class="p-6 border-b border-slate-200 dark:border-slate-800 flex justify-between items-center">
					<div>
						<h2 class="text-lg font-bold dark:text-white">Recent
							Department Activity</h2>
						<p class="text-sm text-slate-500 dark:text-slate-400">Overview
							of the latest changes across various sectors.</p>
					</div>
					<a
						class="flex items-center gap-2 px-4 py-2 bg-primary text-white text-sm font-semibold rounded-lg hover:opacity-90 transition-opacity"
						href="/filter-activity"> <span
						class="material-symbols-outlined text-sm">filter_list</span>
						Filter View
					</a>
				</div>
				<div class="overflow-x-auto">
					<table class="w-full text-left">
						<thead>
							<tr
								class="bg-slate-50 dark:bg-slate-800/50 text-slate-500 dark:text-slate-400 text-xs font-bold uppercase tracking-wider">
								<th class="px-6 py-4">Department</th>
								<th class="px-6 py-4">Coordinator</th>
								<th class="px-6 py-4">Status</th>
								<th class="px-6 py-4">Last Updated</th>
								<th class="px-6 py-4 text-right">Action</th>
							</tr>
						</thead>
						<tbody class="divide-y divide-slate-100 dark:divide-slate-800">
							<tr
								class="hover:bg-slate-50 dark:hover:bg-slate-800/30 transition-colors">
								<td class="px-6 py-4">
									<div class="flex items-center gap-3">
										<div
											class="w-8 h-8 rounded-lg bg-indigo-100 dark:bg-indigo-900/30 flex items-center justify-center text-indigo-600">
											<span class="material-symbols-outlined text-lg">water_drop</span>
										</div>
										<span class="text-sm font-semibold dark:text-slate-200">Water
											Resources</span>
									</div>
								</td>
								<td class="px-6 py-4 text-sm dark:text-slate-400">Anil
									Deshmukh</td>
								<td class="px-6 py-4"><span
									class="px-2.5 py-1 text-[10px] font-bold uppercase rounded-full bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400 border border-emerald-200 dark:border-emerald-800">Active</span>
								</td>
								<td
									class="px-6 py-4 text-xs text-slate-500 dark:text-slate-400 font-medium">2
									mins ago</td>
								<td class="px-6 py-4 text-right"><a
									class="inline-block p-2 text-primary hover:bg-orange-50 dark:hover:bg-orange-900/10 rounded-lg transition-colors"
									href="/edit/water-resources"> <span
										class="material-symbols-outlined text-xl">edit</span>
								</a></td>
							</tr>
							<tr
								class="hover:bg-slate-50 dark:hover:bg-slate-800/30 transition-colors">
								<td class="px-6 py-4">
									<div class="flex items-center gap-3">
										<div
											class="w-8 h-8 rounded-lg bg-amber-100 dark:bg-amber-900/30 flex items-center justify-center text-amber-600">
											<span class="material-symbols-outlined text-lg">electric_bolt</span>
										</div>
										<span class="text-sm font-semibold dark:text-slate-200">Power
											&amp; Energy</span>
									</div>
								</td>
								<td class="px-6 py-4 text-sm dark:text-slate-400">Sunita
									Rao</td>
								<td class="px-6 py-4"><span
									class="px-2.5 py-1 text-[10px] font-bold uppercase rounded-full bg-amber-100 text-amber-700 dark:bg-amber-900/30 dark:text-amber-400 border border-amber-200 dark:border-amber-800">Reviewing</span>
								</td>
								<td
									class="px-6 py-4 text-xs text-slate-500 dark:text-slate-400 font-medium">1
									hour ago</td>
								<td class="px-6 py-4 text-right"><a
									class="inline-block p-2 text-primary hover:bg-orange-50 dark:hover:bg-orange-900/10 rounded-lg transition-colors"
									href="/edit/power-energy"> <span
										class="material-symbols-outlined text-xl">edit</span>
								</a></td>
							</tr>
							<tr
								class="hover:bg-slate-50 dark:hover:bg-slate-800/30 transition-colors">
								<td class="px-6 py-4">
									<div class="flex items-center gap-3">
										<div
											class="w-8 h-8 rounded-lg bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center text-blue-600">
											<span class="material-symbols-outlined text-lg">school</span>
										</div>
										<span class="text-sm font-semibold dark:text-slate-200">Public
											Education</span>
									</div>
								</td>
								<td class="px-6 py-4 text-sm dark:text-slate-400">Kevin
									Fernandes</td>
								<td class="px-6 py-4"><span
									class="px-2.5 py-1 text-[10px] font-bold uppercase rounded-full bg-emerald-100 text-emerald-700 dark:bg-emerald-900/30 dark:text-emerald-400 border border-emerald-200 dark:border-emerald-800">Active</span>
								</td>
								<td
									class="px-6 py-4 text-xs text-slate-500 dark:text-slate-400 font-medium">3
									hours ago</td>
								<td class="px-6 py-4 text-right"><a
									class="inline-block p-2 text-primary hover:bg-orange-50 dark:hover:bg-orange-900/10 rounded-lg transition-colors"
									href="/edit/education"> <span
										class="material-symbols-outlined text-xl">edit</span>
								</a></td>
							</tr>
							<tr
								class="hover:bg-slate-50 dark:hover:bg-slate-800/30 transition-colors">
								<td class="px-6 py-4">
									<div class="flex items-center gap-3">
										<div
											class="w-8 h-8 rounded-lg bg-rose-100 dark:bg-rose-900/30 flex items-center justify-center text-rose-600">
											<span class="material-symbols-outlined text-lg">local_hospital</span>
										</div>
										<span class="text-sm font-semibold dark:text-slate-200">Health
											Services</span>
									</div>
								</td>
								<td class="px-6 py-4 text-sm dark:text-slate-400">Dr. Maya
									Singh</td>
								<td class="px-6 py-4"><span
									class="px-2.5 py-1 text-[10px] font-bold uppercase rounded-full bg-rose-100 text-rose-700 dark:bg-rose-900/30 dark:text-rose-400 border border-rose-200 dark:border-rose-800">Critical</span>
								</td>
								<td
									class="px-6 py-4 text-xs text-slate-500 dark:text-slate-400 font-medium">10
									mins ago</td>
								<td class="px-6 py-4 text-right"><a
									class="inline-block p-2 text-primary hover:bg-orange-50 dark:hover:bg-orange-900/10 rounded-lg transition-colors"
									href="/edit/health"> <span
										class="material-symbols-outlined text-xl">edit</span>
								</a></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div
					class="p-4 border-t border-slate-200 dark:border-slate-800 flex items-center justify-between text-sm text-slate-500">
					<span>Showing 4 of 28 departments</span>
					<div class="flex gap-2">
						<a
							class="px-3 py-1 border border-slate-200 dark:border-slate-700 rounded-lg hover:bg-slate-100 dark:hover:bg-slate-800"
							href="/prev">Previous</a> <a
							class="px-3 py-1 border border-slate-200 dark:border-slate-700 rounded-lg hover:bg-slate-100 dark:hover:bg-slate-800"
							href="/next">Next</a>
					</div>
				</div>
			</div>
		</div>
		<a
			class="fixed bottom-8 right-8 w-14 h-14 sidebar-gradient rounded-full flex items-center justify-center text-white shadow-xl shadow-purple-500/20 hover:scale-110 transition-transform active:scale-95 z-30"
			href="/add-new"> <span class="material-symbols-outlined">add</span>
		</a>
	</main>
	<script>
		if (window.matchMedia
				&& window.matchMedia('(prefers-color-scheme: dark)').matches) {
			document.documentElement.classList.add('dark');
		}
	</script>

</body>
</html>