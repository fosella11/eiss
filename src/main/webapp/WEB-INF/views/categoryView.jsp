<%@ include file="/common/taglibs.jsp"%>
<form:form commandName="category">		
	<table border="0" align="center">
		<tr>
			<td>&nbsp;</td>
			<td><label>Categorias</label></td>
			<td>&nbsp;</td>
		</tr>
		<tr valign="top">
			<td>&nbsp;</td>
			<td>
				<table>						
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>		
						<td>&nbsp;</td>			
						<td><label>Nombre:</label></td>
						<td><form:input path="name" maxlength="50"/></td>
						<td><form:errors path="name"/></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
						
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>			
					<tr>		
						<td>&nbsp;</td>			
						<td><label>Código:</label></td>
						<td><form:input path="code" maxlength="20"/></td>
						<td><form:errors path="code"/></td>
					</tr>
					
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td align="right">
							<input type="submit" id="Guardar" name="Guardar" value="Guardar"/>
						</td>
						<td align="left">
							<c:if test="${not empty category.idCategory }">
									<input type="button" id="Eliminar" name="Eliminar" 
											onclick="location.href='<c:url value="/deleteProduct.htm?idProduct=${category.idCategory}"/>'"
											value="Eliminar"/>									
							</c:if>		
							<input type="button" id="Cancelar" name="Cancelar" 
									onclick="location.href='<c:url value="/categoryList.htm"/>'"
									value="Cancelar"/>		
						</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>		
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>	
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
						<td>&nbsp;</td>
					</tr>																																																																																																											
				</table>
			</td>
			<td>&nbsp;</td>									
		</tr>		
	</table>	
</form:form>	