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
					href="viewIssues"> <span
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
				href="Logout"> <span class="material-symbols-outlined mr-3">logout</span>
				Log Out
			</a>
		</div>
	</aside>