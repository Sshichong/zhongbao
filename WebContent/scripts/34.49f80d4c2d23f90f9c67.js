webpackJsonp([34],{327:function(e,t,r){try{(function(){"use strict";function e(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0}),t.developerRankLoader=t.projectsLoader=t.activityLoader=t.projectAppliesLoader=t.projectPhasesLoader=t.projectMemberLoader=t.projectLoader=void 0;var n=r(719),o=e(n),a=r(717),u=e(a),l=r(718),i=e(l),c=r(715),f=e(c),d=r(714),p=e(d),s=r(720),y=e(s),v=r(716),j=e(v);t.projectLoader=o["default"],t.projectMemberLoader=u["default"],t.projectPhasesLoader=i["default"],t.projectAppliesLoader=f["default"],t.activityLoader=p["default"],t.projectsLoader=y["default"],t.developerRankLoader=j["default"]}).call(this)}finally{}},714:function(e,t,r){try{(function(){"use strict";function n(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&(t[r]=e[r]);return t["default"]=e,t}function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var a=r(7),u=o(a),l=r(3),i=o(l),c=r(6),f=o(c),d=r(5),p=o(d),s=r(4),y=o(s);t["default"]=function(e){var t,r,n,o,a=(t=(0,_.connect)(null,function(e){var t=(0,h.bindActionCreators)(m,e),r=t.loadActivity;return{loadActivity:r}}),t((o=n=function(t){function r(){return(0,i["default"])(this,r),(0,p["default"])(this,(r.__proto__||(0,u["default"])(r)).apply(this,arguments))}return(0,y["default"])(r,t),(0,f["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props,t=e.params.projectId,r=e.loadActivity;t&&r(t)}},{key:"render",value:function(){return j["default"].createElement(e,this.props)}}]),r}(v.Component),n.propTypes={params:v.PropTypes.object.isRequired,loadActivity:v.PropTypes.func.isRequired},r=o))||r);return a};var v=r(1),j=o(v),_=r(8),h=r(9),P=r(43),m=n(P);e.exports=t["default"]}).call(this)}finally{}},715:function(e,t,r){try{(function(){"use strict";function n(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&(t[r]=e[r]);return t["default"]=e,t}function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var a=r(2),u=o(a),l=r(7),i=o(l),c=r(3),f=o(c),d=r(6),p=o(d),s=r(5),y=o(s),v=r(4),j=o(v);t["default"]=function(e){var t,r,n,o,a=(t=(0,P.connect)(function(e){var t=e.project.apply.filter;return{filter:t}},function(e){var t=(0,m.bindActionCreators)(M,e),r=t.loadApplies,n=t.loadContactParam;return{loadApplies:r,loadContactParam:n}}),t((o=n=function(t){function r(){return(0,f["default"])(this,r),(0,y["default"])(this,(r.__proto__||(0,i["default"])(r)).apply(this,arguments))}return(0,j["default"])(r,t),(0,p["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props,t=e.loadApplies,r=e.loadContactParam,n=e.filter,o=e.params.projectId;t((0,u["default"])({},n,{projectId:o})),r(o)}},{key:"render",value:function(){return h["default"].createElement(e,this.props)}}]),r}(_.Component),n.propTypes={params:_.PropTypes.object.isRequired,loadApplies:_.PropTypes.func.isRequired,loadContactParam:_.PropTypes.func.isRequired,filter:_.PropTypes.object.isRequired},r=o))||r);return a};var _=r(1),h=o(_),P=r(8),m=r(9),b=r(43),M=n(b);e.exports=t["default"]}).call(this)}finally{}},716:function(e,t,r){try{(function(){"use strict";function n(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var o=r(7),a=n(o),u=r(3),l=n(u),i=r(6),c=n(i),f=r(5),d=n(f),p=r(4),s=n(p);t["default"]=function(e){var t,r,n,o,u=(t=(0,j.connect)(function(){return{}},function(e){return{load:function(){return e((0,_.loadDeveloperRank)())}}}),t((o=n=function(t){function r(){return(0,l["default"])(this,r),(0,d["default"])(this,(r.__proto__||(0,a["default"])(r)).apply(this,arguments))}return(0,s["default"])(r,t),(0,c["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props.load;e()}},{key:"render",value:function(){return v["default"].createElement(e,this.props)}}]),r}(y.Component),n.propTypes={load:y.PropTypes.func.isRequired},r=o))||r);return u};var y=r(1),v=n(y),j=r(8),_=r(43);e.exports=t["default"]}).call(this)}finally{}},717:function(e,t,r){try{(function(){"use strict";function n(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&(t[r]=e[r]);return t["default"]=e,t}function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var a=r(7),u=o(a),l=r(3),i=o(l),c=r(6),f=o(c),d=r(5),p=o(d),s=r(4),y=o(s);t["default"]=function(e){var t,r,n,o,a=(t=(0,_.connect)(null,function(e){var t=(0,h.bindActionCreators)(m,e),r=t.loadProjectOwnerInfo,n=t.loadProjectDeveloperInfo;return{loadProjectOwnerInfo:r,loadProjectDeveloperInfo:n}}),t((o=n=function(t){function r(){return(0,i["default"])(this,r),(0,p["default"])(this,(r.__proto__||(0,u["default"])(r)).apply(this,arguments))}return(0,y["default"])(r,t),(0,f["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props,t=e.loadProjectOwnerInfo,r=e.loadProjectDeveloperInfo,n=e.params.projectId;t(n),r(n)}},{key:"render",value:function(){return j["default"].createElement(e,this.props)}}]),r}(v.Component),n.propTypes={params:v.PropTypes.object.isRequired,loadProjectOwnerInfo:v.PropTypes.func.isRequired,loadProjectDeveloperInfo:v.PropTypes.func.isRequired},r=o))||r);return a};var v=r(1),j=o(v),_=r(8),h=r(9),P=r(43),m=n(P);e.exports=t["default"]}).call(this)}finally{}},718:function(e,t,r){try{(function(){"use strict";function n(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&(t[r]=e[r]);return t["default"]=e,t}function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var a=r(7),u=o(a),l=r(3),i=o(l),c=r(6),f=o(c),d=r(5),p=o(d),s=r(4),y=o(s);t["default"]=function(e){var t,r,n,o,a=(t=(0,_.connect)(null,function(e){var t=(0,h.bindActionCreators)(m,e),r=t.loadProjectPhases;return{loadProjectPhases:r}}),t((o=n=function(t){function r(){return(0,i["default"])(this,r),(0,p["default"])(this,(r.__proto__||(0,u["default"])(r)).apply(this,arguments))}return(0,y["default"])(r,t),(0,f["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props,t=e.loadProjectPhases,r=e.params.projectId;t(r)}},{key:"render",value:function(){return j["default"].createElement(e,this.props)}}]),r}(v.Component),n.propTypes={params:v.PropTypes.object.isRequired,loadProjectPhases:v.PropTypes.func.isRequired},r=o))||r);return a};var v=r(1),j=o(v),_=r(8),h=r(9),P=r(43),m=n(P);e.exports=t["default"]}).call(this)}finally{}},719:function(e,t,r){try{(function(){"use strict";function n(e){if(e&&e.__esModule)return e;var t={};if(null!=e)for(var r in e)Object.prototype.hasOwnProperty.call(e,r)&&(t[r]=e[r]);return t["default"]=e,t}function o(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var a=r(7),u=o(a),l=r(3),i=o(l),c=r(6),f=o(c),d=r(5),p=o(d),s=r(4),y=o(s);t["default"]=function(e){var t,r,n,o,a=(t=(0,_.connect)(function(){return{}},function(e){var t=(0,h.bindActionCreators)(m,e),r=t.loadProjectInfo;return{loadProjectInfo:r}}),t((o=n=function(t){function r(){return(0,i["default"])(this,r),(0,p["default"])(this,(r.__proto__||(0,u["default"])(r)).apply(this,arguments))}return(0,y["default"])(r,t),(0,f["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props,t=e.loadProjectInfo,r=e.params.projectId;t(r)}},{key:"render",value:function(){return j["default"].createElement(e,this.props)}}]),r}(v.Component),n.propTypes={params:v.PropTypes.object.isRequired,loadProjectInfo:v.PropTypes.func.isRequired},r=o))||r);return a};var v=r(1),j=o(v),_=r(8),h=r(9),P=r(43),m=n(P);e.exports=t["default"]}).call(this)}finally{}},720:function(e,t,r){try{(function(){"use strict";function n(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var o=r(7),a=n(o),u=r(3),l=n(u),i=r(6),c=n(i),f=r(5),d=n(f),p=r(4),s=n(p);t["default"]=function(e){var t,r,n,o,u=(t=(0,j.connect)(function(e){var t=e.project.projects.fetching;return{fetching:t}},function(e){return{load:function(t){return e((0,_.loadProjects)(t))}}}),t((o=n=function(t){function r(){return(0,l["default"])(this,r),(0,d["default"])(this,(r.__proto__||(0,a["default"])(r)).apply(this,arguments))}return(0,s["default"])(r,t),(0,c["default"])(r,[{key:"componentDidMount",value:function(){var e=this.props,t=e.load,r=e.fetching,n=e.location.query;r||t(n)}},{key:"render",value:function(){return v["default"].createElement(e,this.props)}}]),r}(y.Component),n.propTypes={location:y.PropTypes.object.isRequired,fetching:y.PropTypes.bool.isRequired,load:y.PropTypes.func.isRequired},r=o))||r);return u};var y=r(1),v=n(y),j=r(8),_=r(43);e.exports=t["default"]}).call(this)}finally{}},2274:function(e,t){e.exports={"projects-container":"projects-container-29nDe",projectsContainer:"projects-container-29nDe","projects-content":"projects-content-IMdl0",projectsContent:"projects-content-IMdl0","right-container":"right-container-1Exdz",rightContainer:"right-container-1Exdz","left-container":"left-container-1dwXK",leftContainer:"left-container-1dwXK","project-filter-container":"project-filter-container-3DzD5",projectFilterContainer:"project-filter-container-3DzD5","project-filter-content":"project-filter-content-6WjoS",projectFilterContent:"project-filter-content-6WjoS"}},3130:function(e,t,r){try{(function(){"use strict";function n(e){return e&&e.__esModule?e:{"default":e}}Object.defineProperty(t,"__esModule",{value:!0});var o,a,u,l,i=r(7),c=n(i),f=r(3),d=n(f),p=r(6),s=n(p),y=r(5),v=n(y),j=r(4),_=n(j),h=r(1),P=n(h),m=r(269),b=n(m),M=r(13),C=r(15),T=r(129),O=r(327),R=r(2274),E=n(R),k=(o=(0,M.layout)(M.FullWidthContentLayout),o(a=(0,O.projectsLoader)(a=(0,C.roleTypeLoader)(a=(0,O.developerRankLoader)((l=u=function(e){function t(){return(0,d["default"])(this,t),(0,v["default"])(this,(t.__proto__||(0,c["default"])(t)).apply(this,arguments))}return(0,_["default"])(t,e),(0,s["default"])(t,[{key:"render",value:function(){var e=this.props.location;return P["default"].createElement("div",{className:E["default"].projectsContainer},P["default"].createElement("div",{className:E["default"].projectsContent},P["default"].createElement("div",{className:E["default"].leftContainer},P["default"].createElement(T.CompleteTip,null),P["default"].createElement(T.ProjectFilter,{location:e}),P["default"].createElement(T.ProjectList,{location:e})),P["default"].createElement("div",{className:E["default"].rightContainer},P["default"].createElement(b["default"],{enabled:!0,top:85,bottomBoundary:"#zone-bottom",enableTransforms:!1},P["default"].createElement(T.Banner,null),P["default"].createElement(T.ProjectGuide,null),P["default"].createElement(T.DeveloperRank,null),P["default"].createElement(T.QrBanner,null))),P["default"].createElement("a",{id:"zone-bottom"})))}}]),t}(h.Component),u.propTypes={location:h.PropTypes.object.isRequired},a=l))||a)||a)||a)||a);t["default"]=k,e.exports=t["default"]}).call(this)}finally{}}});