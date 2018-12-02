{script src="js/lib/inputmask/jquery.inputmask.min.js"}
{script src="js/lib/creditcardvalidator/jquery.creditCardValidator.js"}

{if $card_id}
    {assign var="id_suffix" value="`$card_id`"}
{else}
    {assign var="id_suffix" value=""}
{/if}

<div class="clearfix">
    <div class="ty-credit-card">
            <div class="ty-credit-card__control-group ty-control-group">
                <label for="credit_card_number_{$id_suffix}" class="ty-control-group__title cm-cc-number cm-required">{__("card_number")}</label>
                <input size="35" type="text" id="credit_card_number_{$id_suffix}" name="payment_info[card_number]" value="" class="ty-credit-card__input cm-focus cm-autocomplete-off" />
                <ul class="ty-cc-icons cm-cc-icons">
                    <li class="ty-cc-icons__item cc-default cm-cc-default"><span class="ty-cc-icons__icon default">&nbsp;</span></li>
                    <li class="ty-cc-icons__item cm-cc-visa"><span class="ty-cc-icons__icon visa">&nbsp;</span></li>
                    <li class="ty-cc-icons__item cm-cc-visa_electron"><span class="ty-cc-icons__icon visa-electron">&nbsp;</span></li>
                    <li class="ty-cc-icons__item cm-cc-mastercard"><span class="ty-cc-icons__icon mastercard">&nbsp;</span></li>
                    <li class="ty-cc-icons__item cm-cc-maestro"><span class="ty-cc-icons__icon maestro">&nbsp;</span></li>
                    <li class="ty-cc-icons__item cm-cc-amex"><span class="ty-cc-icons__icon american-express">&nbsp;</span></li>
                    <li class="ty-cc-icons__item cm-cc-discover"><span class="ty-cc-icons__icon discover">&nbsp;</span></li>
                </ul>
            </div>
    
            <div class="ty-credit-card__control-group ty-control-group">
                <label for="credit_card_month_{$id_suffix}" class="ty-control-group__title cm-cc-date cm-cc-exp-month cm-required">{__("valid_thru")}</label>
                <label for="credit_card_year_{$id_suffix}" class="cm-required cm-cc-date cm-cc-exp-year hidden"></label>
                <input type="text" id="credit_card_month_{$id_suffix}" name="payment_info[expiry_month]" value="" size="2" maxlength="2" class="ty-credit-card__input-short " />&nbsp;&nbsp;/&nbsp;&nbsp;<input type="text" id="credit_card_year_{$id_suffix}"  name="payment_info[expiry_year]" value="" size="2" maxlength="2" class="ty-credit-card__input-short" />&nbsp;
            </div>
    
            <div class="ty-credit-card__control-group ty-control-group">
                <label for="credit_card_name_{$id_suffix}" class="ty-control-group__title cm-required">Credit Card Bank</label>
                <input size="35" type="text" id="credit_card_name_{$id_suffix}" name="payment_info[card_bank]" value="" class="cm-cc-name ty-credit-card__input" />
            </div>
    
            <div class="ty-credit-card__control-group ty-control-group">
                <label for="credit_card_country_{$id_suffix}" class="ty-control-group__title cm-required">Country</label>
                <select id="credit_card_country_{$id_suffix}" name="payment_info[card_country]" class="cm-cc-name ty-credit-card__input">
                    <optionvalue="CHNCN">China</option>
                    <optionvalue="AFGAF">Afghanistan</option>
                    <optionvalue="ALBAL">Albania</option>
                    <optionvalue="ANDAD">Andorra</option>
                    <optionvalue="AGOAI">Angola</option>
                    <optionvalue="ARMAM">Armenia</option>
                    <optionvalue="ABWAW">Aruba</option>
                    <optionvalue="AUSAU">Australia</option>
                    <optionvalue="AREAE">United Arab Emirates</option>
                    <optionvalue="ARGAR">Argentina</option>
                    <optionvalue="ATGAG">Antigua and Barbuda</option>
                    <optionvalue="AUTAT">Austria</option>
                    <optionvalue="AZEAZ">Azerbaijan</option>
                    <optionvalue="ANTAN">Netherlands Antilles</option>
                    <optionvalue="BRBBB">Barbados</option>
                    <optionvalue="BGDBD">Bangladesh</option>
                    <optionvalue="BELBE">Belgium</option>
                    <optionvalue="BLZBZ">Belize</option>
                    <optionvalue="BENBJ">Benin</option>
                    <optionvalue="BTNBT">Bhutan</option>
                    <optionvalue="BOLBO">Bolivia</option>
                    <optionvalue="BIHBA">Bosnia and Herzegovina</option>
                    <optionvalue="BWABW">Botswana</option>
                    <optionvalue="BRNBN">Brunei</option>
                    <optionvalue="BGRBG">Bulgaria</option>
                    <optionvalue="BHRBH">Bahrain</option>
                    <optionvalue="BMUBM">Bermuda</option>
                    <optionvalue="BRABR">Brazil</option>
                    <optionvalue="BHSBS">Bahamas</option>
                    <optionvalue="BFABF">Burkina Faso</option>
                    <optionvalue="BDIBI">Burundi</option>
                    <optionvalue="CMRCM">Cameroon</option>
                    <optionvalue="CANCA">Canada</option>
                    <optionvalue="CPVCV">Cape Verde</option>
                    <optionvalue="CAFCF">Central African Republic</option>
                    <optionvalue="COMKM">Comoros</option>
                    <optionvalue="COGCG">Congo</option>
                    <optionvalue="CHECH">Switzerland</option>
                    <optionvalue="CHLCL">Chile</option>
                    <optionvalue="COLCO">Colombia</option>
                    <optionvalue="CRICR">Costa Rica</option>
                    <optionvalue="CYPCY">Cyprus</option>
                    <optionvalue="CZECZ">Czech Republic</option>
                    <optionvalue="DEUDE">Germany</option>
                    <optionvalue="DNKDK">Denmark</option>
                    <optionvalue="DJIDJ">Djibouti</option>
                    <optionvalue="DZADZ">Algeria</option>
                    <optionvalue="DOMDO">Dominican Republic</option>
                    <optionvalue="ECUEC">Ecuador</option>
                    <optionvalue="EGYEG">Egypt</option>
                    <optionvalue="ERIER">Eritrea</option>
                    <optionvalue="ESTEE">Estonia</option>
                    <optionvalue="ETHET">Ethiopia</option>
                    <optionvalue="ESPES">Spain</option>
                    <optionvalue="ESHEH">Western Sahara</option>
                    <optionvalue="FJIFJ">Fiji</option>
                    <optionvalue="FRAFR">France</option>
                    <optionvalue="FINFI">Finland</option>
                    <optionvalue="GUFGF">French Guiana</option>
                    <optionvalue="GABGA">Gabon</option>
                    <optionvalue="GMBGM">Gambia</option>
                    <optionvalue="GEOGE">Georgia</option>
                    <optionvalue="GHAGH">Ghana</option>
                    <optionvalue="GIBGI">Gibraltar</option>
                    <optionvalue="GRDGD">Grenada</option>
                    <optionvalue="GRCGR">Greece</option>
                    <optionvalue="GLPGP">Guadeloupe</option>
                    <optionvalue="GTMGT">Guatemala</option>
                    <optionvalue="GUYGY">Guyana</option>
                    <optionvalue="GNBGW">Guinea-Bissau</option>
                    <optionvalue="GBRGB">United Kingdom</option>
                    <optionvalue="HTIHT">Haiti</option>
                    <optionvalue="HNDHN">Honduras</option>
                    <optionvalue="HKGHK">Hong Kong</option>
                    <optionvalue="HUNHU">Hungary</option>
                    <optionvalue="INAID">The Republic of Indonesia</option>
                    <optionvalue="IRLIE">Ireland</option>
                    <optionvalue="ISRIL">Israel</option>
                    <optionvalue="INDIN">India</option>
                    <optionvalue="ISLIS">Iceland</option>
                    <optionvalue="ITAIT">Italy</option>
                    <optionvalue="JAMJM">Jamaica</option>
                    <optionvalue="JPNJP">Japan</option>
                    <optionvalue="JORJO">Jordan</option>
                    <optionvalue="KAZKZ">Kazakhstan</option>
                    <optionvalue="KENKE">Kenya</option>
                    <optionvalue="KGZKG">Kyrgyzstan</option>
                    <optionvalue="KORKR">Korea</option>
                    <optionvalue="KWTKW">Kuwait</option>
                    <optionvalue="KNAKN">Saint Kitts and Nevis</option>
                    <optionvalue="LBNLB">Lebanon</option>
                    <optionvalue="LBYLY">Libyan Arab Jamahiriya</option>
                    <optionvalue="LIELI">Liechtenstein</option>
                    <optionvalue="LKALK">Sri Lanka</option>
                    <optionvalue="LTULT">Lithuania</option>
                    <optionvalue="LUXLU">Luxembourg</option>
                    <optionvalue="LVALV">Latvia</option>
                    <optionvalue="LCALC">Saint Lucia</option>
                    <optionvalue="MCOMC">Monaco</option>
                    <optionvalue="MACMO">Macau</option>
                    <optionvalue="MKDMk">Macedonia</option>
                    <optionvalue="MDGMG">Madagascar</option>
                    <optionvalue="MWIMW">Malawi</option>
                    <optionvalue="MDVMV">Maldives</option>
                    <optionvalue="MLIML">Mali</option>
                    <optionvalue="MLTMT">Malta</option>
                    <optionvalue="MTQMQ">Martinique</option>
                    <optionvalue="MRTMR">Mauritania</option>
                    <optionvalue="MUSMU">Mauritius</option>
                    <optionvalue="MEXME">Mexico</option>
                    <optionvalue="MYSMY">Malaysia</option>
                    <optionvalue="MDAMD">Moldova</option>
                    <optionvalue="MNGMN">Mongolia</option>
                    <optionvalue="MARMA">Morocco</option>
                    <optionvalue="MOZMZ">Mozambique</option>
                    <optionvalue="NAMNA">Namibia</option>
                    <optionvalue="NPLNP">Nepal</option>
                    <optionvalue="NLDNL">Netherlands</option>
                    <optionvalue="NICNI">Nicaragua</option>
                    <optionvalue="NERNE">Niger</option>
                    <optionvalue="NGANG">Nigeria</option>
                    <optionvalue="NORNO">Norway</option>
                    <optionvalue="NZLNZ">New Zealand</option>
                    <optionvalue="OMNOM">Oman</option>
                    <optionvalue="PAKPK">Pakistan</option>
                    <optionvalue="PANPA">Panama</option>
                    <optionvalue="PNGPG">Papua New Guinea</option>
                    <optionvalue="PRYPY">Paraguay</option>
                    <optionvalue="PERPE">Peru</option>
                    <optionvalue="PHLPH">Philippines</option>
                    <optionvalue="POLPL">Poland</option>
                    <optionvalue="PRTPT">Portugal</option>
                    <optionvalue="QATQA">Qatar</option>
                    <optionvalue="ROURO">Romania</option>
                    <optionvalue="RUSRU">Russian Federation</option>
                    <optionvalue="RWARW">Rwanda</option>
                    <optionvalue="SMRSM">San Marino</option>
                    <optionvalue="STPST">Sao Tome and Principe</option>
                    <optionvalue="SAUSA">Saudi Arabia</option>
                    <optionvalue="SENSN">Senegal</option>
                    <optionvalue="SRBRS">Serbia</option>
                    <optionvalue="SWZSZ">Swaziland</option>
                    <optionvalue="SYCSC">Seychelles</option>
                    <optionvalue="SLESL">Sierra Leone</option>
                    <optionvalue="SOMSO">Somalia</option>
                    <optionvalue="SURSR">Suriname</option>
                    <optionvalue="SWESW">Sweden</option>
                    <optionvalue="SGPSG">Singapore</option>
                    <optionvalue="SVKSK">Slovakia</option>
                    <optionvalue="SVNSI">Slovenia</option>
                    <optionvalue="SLVSV">El Salvador</option>
                    <optionvalue="SYRSY">Syrian Arab Republic</option>
                    <optionvalue="TJKTJ">Tajikistan</option>
                    <optionvalue="TZATZ">Tanzania</option>
                    <optionvalue="THATH">Thailand</option>
                    <optionvalue="TGOTG">Togo</option>
                    <optionvalue="TUNTN">Tunisia</option>
                    <optionvalue="TURTR">Turkey</option>
                    <optionvalue="TTOTT">Trinidad and Tobago</option>
                    <optionvalue="TWNTW">Taiwan, Province of China</option>
                    <optionvalue="TKMTM">Turkmenistan</option>
                    <optionvalue="TCATC">Turks and Caicos Islands</option>
                    <optionvalue="UGAUG">Uganda</option>
                    <optionvalue="UKRUA">Ukraine</option>
                    <optionvalue="USAUS">United States</option>
                    <optionvalue="URYUY">Uruguay</option>
                    <optionvalue="UZBUZ">Uzbekistan</option>
                    <optionvalue="VENVE">Venezuela</option>
                    <optionvalue="VCTVC">Saint Vincent and the Grenadines</option>
                    <optionvalue="VNMVN">Vietnam</option>
                    <optionvalue="YEMYE">Yemen</option>
                    <optionvalue="ZMBZM">Zambia</option>
                    <optionvalue="ZAFZA">South Africa</option>
		</select>
            </div>
    </div>
    
    <div class="ty-control-group ty-credit-card__cvv-field cvv-field">
        <label for="credit_card_cvv2_{$id_suffix}" class="ty-control-group__title cm-required cm-integer cm-cc-cvv2 cm-autocomplete-off">{__("cvv2")}</label>
        <input type="text" id="credit_card_cvv2_{$id_suffix}" name="payment_info[cvv2]" value="" size="4" maxlength="4" class="ty-credit-card__cvv-field-input" />

        <div class="ty-cvv2-about">
            <span class="ty-cvv2-about__title">{__("what_is_cvv2")}</span>
            <div class="ty-cvv2-about__note">

                <div class="ty-cvv2-about__info mb30 clearfix">
                    <div class="ty-cvv2-about__image">
                        <img src="{$images_dir}/visa_cvv.png" alt="" />
                    </div>
                    <div class="ty-cvv2-about__description">
                        <h5 class="ty-cvv2-about__description-title">{__("visa_card_discover")}</h5>
                        <p>{__("credit_card_info")}</p>
                    </div>
                </div>
                <div class="ty-cvv2-about__info clearfix">
                    <div class="ty-cvv2-about__image">
                        <img src="{$images_dir}/express_cvv.png" alt="" />
                    </div>
                    <div class="ty-cvv2-about__description">
                        <h5 class="ty-cvv2-about__description-title">{__("american_express")}</h5>
                        <p>{__("american_express_info")}</p>
                    </div>
                </div>

            </div>
        </div>
    </div>
</div>

<script type="text/javascript">

(function(_, $) {
    $.ceEvent('on', 'ce.commoninit', function() {
        var icons = $('.cm-cc-icons li');
        var ccNumber = $(".cm-cc-number");
        var ccNumberInput = $("#" + ccNumber.attr("for"));
        var ccCv2 = $(".cm-cc-cvv2");
        var ccCv2Input = $("#" + ccCv2.attr("for"));
        var ccMonth = $(".cm-cc-exp-month");
        var ccMonthInput = $("#" + ccMonth.attr("for"));
        var ccYear = $(".cm-cc-exp-year");
        var ccYearInput = $("#" + ccYear.attr("for"));

        if(_.isTouch === false && jQuery.isEmptyObject(ccNumberInput.data("_inputmask")) == true) {
            
            ccNumberInput.inputmask("9999 9999 9999 9[99][9]", {
                placeholder: ' '
            });

            $.ceFormValidator('registerValidator', {
                class_name: 'cm-cc-number',
                message: '',
                func: function(id) {
                    return ccNumberInput.inputmask("isComplete");
                }
            });

            ccCv2Input.inputmask("999[9]", {
                placeholder: ''
            });

            $.ceFormValidator('registerValidator', {
                class_name: 'cm-cc-cvv2',
                message: "{__("error_validator_ccv")}",
                func: function(id) {
                    return ccCv2Input.inputmask("isComplete");
                }
            });

            ccMonthInput.inputmask("99", {
                placeholder: ''
            });

            ccYearInput.inputmask("99", {
                placeholder: ''
            });

            $.ceFormValidator('registerValidator', {
                class_name: 'cm-cc-date',
                message: '',
                func: function(id) {
                    return (ccYearInput.inputmask("isComplete") && ccMonthInput.inputmask("isComplete"));
                }
            });
        }

        ccNumberInput.validateCreditCard(function(result) {
            icons.removeClass('active');
            if (result.card_type) {
                icons.filter('.cm-cc-' + result.card_type.name).addClass('active');
                if (['visa_electron', 'maestro', 'laser'].indexOf(result.card_type.name) != -1) {
                    ccCv2.removeClass("cm-required");
                } else {
                    ccCv2.addClass("cm-required");
                }
            }
        });
        
    });
})(Tygh, Tygh.$);
</script>
