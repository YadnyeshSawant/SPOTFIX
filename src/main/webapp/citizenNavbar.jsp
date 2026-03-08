<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
				href="#"> <span class="material-symbols-outlined">grid_view</span>
				Dashboard
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="CitizenProfile.html"> <span
				class="material-symbols-outlined">account_circle</span> Profile
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="citizenAnn.html"> <span class="material-symbols-outlined">campaign</span>
				Announcements
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="CitizenMyIssues.jsp"> <span
				class="material-symbols-outlined">assignment_late</span> My Issues
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="#"> <span class="material-symbols-outlined">groups</span>
				Community Issues
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="#"> <span class="material-symbols-outlined">tips_and_updates</span>
				My Project Ideas
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="#"> <span class="material-symbols-outlined">handshake</span>
				Community Projects
			</a> <a
				class="flex items-center gap-3 px-4 py-3 rounded-xl text-slate-600 dark:text-slate-400 hover:bg-slate-100 dark:hover:bg-white/5 hover:text-primary dark:hover:text-primary transition-colors "
				href="#"> <span class="material-symbols-outlined">account_balance</span>
				Government Project
			</a>
		</nav>
		<form action="LogoutHandler" method="post">
			<div
				class="p-4 mt-auto border-t border-slate-200 dark:border-slate-800">
				<button type="submit"
					class="flex items-center gap-3 px-4 py-3 rounded-xl text-red-500 hover:bg-red-50 dark:hover:bg-red-500/10 transition-colors">
					<span class="material-symbols-outlined">logout</span> Logout
				</button>
			</div>
		</form>
	</aside>