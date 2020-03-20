Vim�UnDo� �K�k5M��V�Wp"DG��Vo}�bs��4E�   �                                   ]T��     _�                              ����                                                                                                                                                                                                                                                                                                                            !   #       !          v       ]T��     �               �   // utils   2import { addMaskCnpjCpf } from 'utils/isValidCnpj'   0import { formatToDate } from 'utils/isValidDate'   7import { currencyMaskNew } from 'utils/isValidCurrency'   =import { getStatusType, getStatusText } from 'utils/bankSlip'   #import classnames from 'classnames'       // components   6import { CSSTransition } from 'react-transition-group'   import Icon from 'shared/Icon'   $import Loading from 'shared/Loading'   $import Label from 'components/Label'   &import Swiper from 'components/Swiper'   (import Message from 'components/Message'   1import ButtonGroup from 'components/Button/Group'       ,import pageNames from 'constants/pageNames';   9const { registerBankSlip, registerCustomer } = pageNames;       import './ListCharges.styl'       const ItemCharges = ({   
	customer,   	created_at,   	expiration_date,   	amount,   	transaction_id,   	status,   	document_url,   	slide = false   }) =>   p	<div className={classnames('list-charges__item', { 'swiper-slide': slide })} data-transaction={transaction_id}>   &		<div className="list-charges__wrap">   			<a   				href={document_url}   "				className="list-charges__link"   				target="_blank"   \				title={`Abrir boleto do ${customer.name}, vencimento: ${formatToDate(expiration_date)}`}   				>    				<Icon name="search-list"  />   				{ customer.name }   			</a>   		</div>   &		<div className="list-charges__wrap">   Q			<div className="list-charges__value">{addMaskCnpjCpf(customer.document)}</div>   H			<div className="list-charges__value">{formatToDate(created_at)}</div>   Z			<div className="list-charges__value is-bold">{currencyMaskNew(amount.toFixed(2))}</div>   M			<div className="list-charges__value">{formatToDate(expiration_date)}</div>   p			<div className="list-charges__value"><Label text={getStatusText(status)} type={getStatusType(status)}/></div>   		</div>   	</div>       ;const ListCharges = ({ listCharge, isLoading, isError }) =>   (	<div className="list-charges motion-3">   		<CSSTransition   			in={!isLoading && !isError}   			classNames="list-charges"   			timeout={500}   			mountOnEnter   			unmountOnExit   			key="list-charges-content"   		>   			<div>   (				<div className="list-charges__head">   )					<div className="list-charges__wrap">   B						<div className="list-charges__value is-bold">Comprador</div>   					</div>   )					<div className="list-charges__wrap">   D						<div className="list-charges__value is-bold">CPF ou CNPJ</div>   A						<div className="list-charges__value is-bold">Emissão</div>   >						<div className="list-charges__value is-bold">Valor</div>   C						<div className="list-charges__value is-bold">Vencimento</div>   ?						<div className="list-charges__value is-bold">Status</div>   					</div>   
				</div>   +				<div className="list-charges__content">   					{   						listCharge.map(item =>   							<ItemCharges   !								key={item.transaction_id}   								{...item}   								/>   						)   					}   
				</div>   				<Swiper   					id="swiper-charges-list"   %					className="list-charges__slider"   4					classNameWrapper="list-charges__slider-wrapper"   					options={{   						spaceBetween: 16,   						slidesPerView: 'auto',   						pagination: {    							el: '.swiper-pagination',   							clickable: true,   							dynamicBullets: true   						},   						breakpoints: {   							350: {   								spaceBetween: 8,   							}   						}   					}}   				>   					{   						listCharge.map(item =>   							<ItemCharges   -								key={`mobile-${item.transaction_id}`}   								slide={true}   								{...item}   								/>   						)   					}   				</Swiper>   				</div>   		</CSSTransition>   		<CSSTransition   			in={!!isLoading}   			classNames="list-charges"   			timeout={500}   			mountOnEnter   			unmountOnExit   			key="list-charges-loading"   		>   			<Loading inverted={true} />   		</CSSTransition>   		<CSSTransition   			in={!isLoading && isError}   			classNames="list-charges"   			timeout={500}   			mountOnEnter   			unmountOnExit   			key="list-charges-message"   		>   			<Message   				icon="generate-warning"   $				title="Nenhum boleto encontrado"   ?				desc="Por favor, gere novos boletos atravez do link abaixo"   			>   				<ButtonGroup   					buttons={[   ]						{ className: 'btn--negative', text: 'Cadastrar Cliente', link: registerCustomer.path },   K						{ className: '', text: 'Gerar Boleto', link: registerBankSlip.path },   					]}   					/>   			</Message>   		</CSSTransition>   	</div>       export default ListCharges5��