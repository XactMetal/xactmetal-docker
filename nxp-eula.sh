if [ -f "/tmp/nxp-eula-accepted" ]; then
    echo "NXP EULA has already been accepted."
elif [ ! -n "$BASH" ]; then
    # Interactive shell detection is bashism. Do not bother if we cannot detect.
    echo "WARNING: NXP EULA has been auto-accepted; this imply you agree with it anyway."
elif [ "${ACCEPT_FSL_EULA}" != "1" ]; then
    cat <<EOMESSAGE
This container uses Vivante binary drivers provided by NXP. You need to read
and accept the NXP EULA before continuing..
EOMESSAGE

    # In case we run non-interactively, ask the user to accept through environment
    if [[ $- != *i* ]]; then
         cat <<EOMESSAGE
Start an interactive shell to read the NXP EULA. Alternatively set the
environment variable ACCEPT_FSL_EULA=1 to accept the EULA non-interacitvely.
EOMESSAGE
        exit 1
    fi

    sleep 2

    cat | more -d <<EOEULA
LA_OPT_NXP_Software_License v5 January 2019
IMPORTANT.  Read the following NXP Software License Agreement ("Agreement")
completely. By selecting the "I Accept" button at the end of this page, or by
downloading, installing, or using the Licensed Software, you indicate that you
accept the terms of the Agreement and you acknowledge that you have the
authority, for yourself or on behalf of your company, to bind your company to
these terms. You may then download or install the file. In the event of a
conflict between the terms of this Agreement and any license terms and
conditions for NXP's proprietary software embedded anywhere in the Licensed
Software file, the terms of this Agreement shall control.  If a separate
license agreement for the Licensed Software has been signed by you and NXP,
then that agreement shall govern your use of the Licensed Software and shall
supersede this Agreement.
NXP SOFTWARE LICENSE AGREEMENT
This is a legal agreement between your employer, of which you are an authorized
representative, or, if you have no employer, you as an individual ("you" or
"Licensee"), and NXP B.V. ("NXP").  It concerns your rights to use the software
provided to you in binary or source code form and any accompanying written
materials (the "Licensed Software"). The Licensed Software may include any
updates or error corrections or documentation relating to the Licensed Software
provided to you by NXP under this Agreement. In consideration for NXP allowing
you to access the Licensed Software, you are agreeing to be bound by the terms
of this Agreement. If you do not agree to all of the terms of this Agreement,
do not download or install the Licensed Software. If you change your mind
later, stop using the Licensed Software and delete all copies of the Licensed
Software in your possession or control. Any copies of the Licensed Software
that you have already distributed, where permitted, and do not destroy will
continue to be governed by this Agreement. Your prior use will also continue to
be governed by this Agreement.
1.       DEFINITIONS
1.1.         "Affiliate" means, with respect to a party, any corporation or
other legal entity that now or hereafter Controls, is Controlled by or is under
common Control with such party; where "Control" means the direct or indirect
ownership of greater than fifty percent (50%) of the shares or similar
interests entitled to vote for the election of directors or other persons
performing similar functions. An entity is considered an Affiliate only so long
as such Control exists.
1.2	"Authorized System" means either (i) Licensee's hardware product which
incorporates an NXP Product or (ii) Licensee's software program which is used
exclusively in connection with an NXP Product and with which the Licensed
Software will be integrated.
1.3.	"Derivative Work" means a work based upon one or more pre-existing
works.  A work consisting of editorial revisions, annotations, elaborations, or
other modifications which, as a whole, represent an original work of
authorship, is a Derivative Work.
1.4	"Intellectual Property Rights" means any and all rights under statute,
common law or equity in and under copyrights, trade secrets, and patents
(including utility models), and analogous rights throughout the world,
including any applications for and the right to apply for, any of the foregoing.
1.5	"NXP Product" means a programmable processing unit (e.g. a
microprocessor, microcontroller, sensor or digital signal processor) supplied
directly or indirectly from NXP or an NXP Affiliate.
1.6      "Software Content Register" means the documentation which may
accompany the Licensed Software which identifies the contents of the Licensed
Software, including but not limited to identification of any Third Party
Software, if any, and may also contain other related information as whether the
license in 2.3 is applicable.
1.7     "Third Party Software" means, any software included in the Licensed
Software that is not NXP proprietary software, and is not open source software,
and to which different license terms may apply.
2.       LICENSE GRANT.
2.1.         If you are not expressly granted the production use license in
Section 2.3 in the Software Content Register, then you are only granted the
rights in Section 2.2 and not in 2.3.  If you are expressly granted the
production use license in Section 2.3 in the Software Content Register, then
you are granted the rights in both Section 2.2 and 2.3.
2.2.	Internal Use License.  Subject to the terms and conditions of this
Agreement, NXP grants you a worldwide, personal, non-transferable,
non-exclusive, non-sublicensable license, solely for the development of an
Authorized System:
(a)	to use and reproduce the Licensed Software (and its Derivative Works
prepared under the license in Section 2.2(b)); and
(b)	for Licensed Software provided to you in source code form (human
readable), to prepare Derivative Works of the Licensed Software.
You may not distribute or sublicense the Licensed Software to others under the
license granted in this Section 2.2.
2.3.        Production Use License.  If expressly authorized in the Software
Content Register, subject to the terms and conditions of this Agreement, NXP
grants you a worldwide, personal, non-transferable, non-exclusive,
non-sublicensable license solely in connection with your manufacturing and
distribution of an Authorized System:
(a)	to manufacture (or have manufactured), distribute, and market the
Licensed Software (and its Derivative Works prepared under the license in
2.2(b)) in object code (machine readable format) only as part of, or embedded
within, Authorized Systems and not on a standalone basis.  Notwithstanding the
foregoing, those files marked as .h files ("Header files") may be distributed
in source or object code form, but only as part of, or embedded within
Authorized Systems; and
(b)	to copy and distribute as needed, solely in connection with an
Authorized System, non-confidential NXP information provided as part of the
Licensed Software for the purpose of maintaining and supporting Authorized
Systems with which the Licensed Software is integrated.
2.4	Separate license grants to Third Party Software, or other terms
applicable to the Licensed Software if different from those granted in this
Section 2, are contained in Appendix A. The Licensed Software may be
accompanied by a Software Content Register which will identify that portion of
the Licensed Software, if any, that is subject to the different terms in
Appendix A.
2.5.         You may use subcontractors on your premises to exercise your
rights under Section 2.2 and Section 2.3, if any, so long as you have an
agreement in place with the subcontractor containing confidentiality
restrictions no less stringent than those contained in this Agreement. You will
remain liable for your subcontractors' adherence to the terms of this Agreement
and for any and all acts and omissions of such subcontractors with respect to
this Agreement and the Licensed Software.
3.       LICENSE LIMITATIONS AND RESTRICTIONS.
3.1.         The licenses granted above in Section 2 only extend to NXP
Intellectual Property Rights that would be infringed by the unmodified Licensed
Software prior to your preparation of any Derivative Work.
3.2.         The Licensed Software is licensed to you, not sold. Title to
Licensed Software delivered hereunder remains vested in NXP or NXP's licensor
and cannot be assigned or transferred. You are expressly forbidden from selling
or otherwise distributing the Licensed Software, or any portion thereof, except
as expressly permitted herein. This Agreement does not grant to you any implied
rights under any NXP or third party Intellectual Property Rights.
3.3.         You may not translate, reverse engineer, decompile, or disassemble
the Licensed Software except to the extent applicable law specifically
prohibits such restriction. You must prohibit your subcontractors or customers
(if distribution is permitted) from translating, reverse engineering,
decompiling, or disassembling the Licensed Software except to the extent
applicable law specifically prohibits such restriction.
3.4.         You must reproduce any and all of NXP's (or its third-party
licensor's) copyright notices and other proprietary legends on copies of
Licensed Software.
3.5.         If you distribute the Licensed Software to the United States
Government, then the Licensed Software is "restricted computer software" and is
subject to FAR 52.227-19.
3.6.         You grant to NXP a non-exclusive, non-transferable, irrevocable,
perpetual, worldwide, royalty-free, sub-licensable license under your
Intellectual Property Rights to use without restriction and for any purpose any
suggestion, comment or other feedback related to the Licensed Software
(including, but not limited to, error corrections and bug fixes).
3.7.         You will not take or fail to take any action that could subject
the Licensed Software to an Excluded License. An Excluded License means any
license that requires, as a condition of use, modification or distribution of
software subject to the Excluded License, that such software or other software
combined and/or distributed with the software be (i) disclosed or distributed
in source code form; (ii) licensed for the purpose of making Derivative Works;
or (iii) redistributable at no charge.
3.8.         You may not publish or distribute information, results or data
associated with the use of the Licensed Software to anyone other than NXP;
however, you must advise NXP of any results obtained including any problems or
suggested improvements thereof.  NXP retains the right to use such results and
related information in any manner it deems appropriate
4.       OPEN SOURCE.         Open source software included in the Licensed
Software is not licensed under the terms of this Agreement but is instead
licensed under the terms of the applicable open source license(s), such as the
BSD License, Apache License or the GNU Lesser General Public License. Your use
of the open source software is subject to the terms of each applicable license.
You must agree to the terms of each applicable license, or you cannot use the
open source software.
5.       INTELLECTUAL PROPERTY RIGHTS.    Your modifications to the Licensed
Software, and all Intellectual Property Rights associated with, and title
thereto, will be the property of NXP. Upon request, you must provide NXP the
source code of any derivative of the Licensed Software. You agree to assign
all, and hereby do assign all rights, title, and interest to any such
modifications to the Licensed Software to NXP and agree to provide all
assistance reasonably requested by NXP to establish, preserve or enforce such
right. Further, you agree to waive all moral rights relating to your
modifications to the Licensed Software, including, without limitation, all
rights of identification of authorship and all rights of approval, restriction,
or limitation on use or subsequent modification. Notwithstanding the foregoing,
you will have the license rights granted in Section 2 hereto to any such
modifications made by you or your subcontractor.
6.       PATENT COVENANT NOT TO SUE. As partial, material consideration for the
rights granted to you under this Agreement, you covenant not to sue or
otherwise assert your patents against NXP or an NXP Affiliate, or a NXP
licensee of the Licensed Software for infringement of your Intellectual
Property Rights by the manufacture, use, sale, offer for sale, importation or
other disposition or promotion of the Licensed Software and/or any
redistributed portions of the Licensed Software.
7.       ESSENTIAL PATENTS.    NXP has no obligation to identify or obtain any
license to any Intellectual Property Right of a third-party that may be
necessary for use in connection with technology that is incorporated into the
Authorized System (whether or not as part of the Licensed Software).
8.       TERM AND TERMINATION.   This Agreement will remain in effect unless
terminated as provided in this Section.
8.1.         You may terminate this Agreement immediately upon written notice
to NXP at the address provided below.
8.2.         Either party may terminate this Agreement if the other party is in
default of any of the terms and conditions of this Agreement, and termination
is effective if the defaulting party fails to correct such default within 30
days after written notice thereof by the non-defaulting party to the defaulting
party at the address below.
8.3.         Notwithstanding the foregoing, NXP may terminate this Agreement
immediately upon written notice if you: breach any of your confidentiality
obligations or the license restrictions under this Agreement;  become bankrupt,
insolvent, or file a petition for bankruptcy or insolvency; make an assignment
for the benefit of its creditors; enter proceedings for winding up or
dissolution; are dissolved; or are nationalized or become subject to the
expropriation of all or substantially all of your business or assets.
8.4.         Upon termination of this Agreement, all licenses granted under
Section 2 will expire.
8.5.         After termination of this Agreement by either party   you will
destroy all parts of Licensed Software and its Derivative Works (if any) and
will provide to NXP a statement certifying the same.
8.6.         Notwithstanding the termination of this Agreement for any reason,
the terms of Sections 1 and 3 through 25 will survive.
9.        SUPPORT.  NXP is not obligated to provide any support, upgrades or
new releases of the Licensed Software under this Agreement. If you wish, you
may contact NXP and report problems and provide suggestions regarding the
Licensed Software. NXP has no obligation to respond to such a problem report or
suggestion. NXP may make changes to the Licensed Software at any time, without
any obligation to notify or provide updated versions of the Licensed Software
to you.
10.        NO WARRANTY.  To the maximum extent permitted by law, NXP expressly
disclaims any warranty for the Licensed Software. The Licensed Software is
provided "AS IS", without warranty of any kind, either express or implied,
including without limitation the implied warranties of merchantability, fitness
for a particular purpose, or non-infringement. You assume the entire risk
arising out of the use or performance of the licensed software, or any systems
you design using the licensed software (if any).
11.        INDEMNITY. You agree to fully defend and indemnify NXP from all
claims, liabilities, and costs (including reasonable attorney's fees) related
to (1) your use (including your subcontractor's or distributee's use, if
permitted) of the Licensed Software or (2) your violation of the terms and
conditions of this Agreement.
12.        LIMITATION OF LIABILITY.  EXCLUDING LIABILITY FOR A BREACH OF
SECTION 2 (LICENSE GRANTS), SECTION 3 (LICENSE LIMITATIONS AND RESTRICTIONS),
SECTION 17 (CONFIDENTIAL INFORMATION), OR CLAIMS UNDER SECTION 11(INDEMNITY),
IN NO EVENT WILL EITHER PARTY BE LIABLE, WHETHER IN CONTRACT, TORT, OR
OTHERWISE, FOR ANY INCIDENTAL, SPECIAL, INDIRECT, CONSEQUENTIAL OR PUNITIVE
DAMAGES, INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR ANY LOSS OF USE, LOSS OF
TIME, INCONVENIENCE, COMMERCIAL LOSS, OR LOST PROFITS, SAVINGS, OR REVENUES, TO
THE FULL EXTENT SUCH MAY BE DISCLAIMED BY LAW. NXP'S TOTAL LIABILITY FOR ALL
COSTS, DAMAGES, CLAIMS, OR LOSSES WHATSOEVER ARISING OUT OF OR IN CONNECTION
WITH THIS AGREEMENT OR PRODUCT(S) SUPPLIED UNDER THIS AGREEMENT IS LIMITED TO
THE AGGREGATE AMOUNT PAID BY YOU TO NXP IN CONNECTION WITH THE LICENSED
SOFTWARE PROVIDED UNDER THIS AGREEMENT TO WHICH LOSSES OR DAMAGES ARE CLAIMED.
13.        EXPORT COMPLIANCE. Each party shall comply with all applicable
export and import control laws and regulations including but not limited to the
US Export Administration Regulation (including prohibited party lists issued by
other federal governments), Catch-all regulations and all national and
international embargoes. Each party further agrees that it will not knowingly
transfer, divert, export or re-export, directly or indirectly, any product,
software, including software source code, or technology restricted by such
regulations or by other applicable national regulations, received from the
other party under this Agreement, or any direct product of such software or
technical data to any person, firm, entity, country or destination to which
such transfer, diversion, export or re-export is restricted or prohibited,
without obtaining prior written authorization from the applicable competent
government authorities to the extent required by those laws.
14.   GOVERNMENT CONTRACT COMPLIANCE
14.1.      If you sell Authorized Systems directly to any government or public
entity, including U.S., state, local, foreign or international governments or
public entities, or indirectly via a prime contractor or subcontractor of such
governments or entities, NXP makes no representations, certifications, or
warranties whatsoever about compliance with government or public entity
acquisition statutes or regulations, including, without limitation, statutes or
regulations that may relate to pricing, quality, origin or content.
14.2.      The Licensed Software has been developed at private expense and is a
"Commercial Item" as defined in 48 C.F.R. Section 2.101, consisting of
"Commercial Computer Software", and/or "Commercial Computer Software
Documentation," as such terms are used in 48 C.F.R. Section 12.212 (or 48
C.F.R. Section 227.7202, as applicable) and may only be licensed to or shared
with U.S. Government end users in object code form as part of, or embedded
within, Authorized Systems. Any agreement pursuant to which you share the
Licensed Software will include a provision that reiterates the limitations of
this document and requires all sub-agreements to similarly contain such
limitations.
15.        CRITICAL APPLICATIONS
15.1.      You make the ultimate design decisions regarding your products and
are solely responsible for compliance with all legal, regulatory, safety, and
security related requirements concerning your products, regardless of any
information or support that may be provided by NXP.  The Licensed Software is
not designed for use in connection with products, applications, or systems
where a failure could cause personal injury or death.  If Licensee's, or
Licensee's contractors or distributees, permit use of the Licensed Software for
such products, applications, or systems, Licensee agrees to indemnify NXP and
its officers and employees from all liability, including attorneys' fees and
costs.
16.        CHOICE OF LAW; VENUE.  This Agreement will be governed by,
construed, and enforced in accordance with the laws of The Netherlands, without
regard to conflicts of laws principles, will apply to all matters relating to
this Agreement or the Licensed Software, and you agree that any litigation will
be subject to the exclusive jurisdiction of the courts of Amsterdam, The
Netherlands. The United Nations Convention on Contracts for the International
Sale of Goods will not apply to this document.
17.        CONFIDENTIAL INFORMATION.  Subject to the license grants and
restrictions contained herein, you must treat the Licensed Software as
confidential information and you agree to retain the Licensed Software in
confidence perpetually. You may not disclose any part of the Licensed Software
to anyone other than distributees in accordance with Section 2.3 and employees,
or subcontractors in accordance with Section 2.5, who have a need to know of
the Licensed Software and who have executed written agreements obligating them
to protect such Licensed Software to at least the same degree of
confidentiality as in this Agreement. You agree to use the same degree of care,
but no less than a reasonable degree of care, with the Licensed Software as you
do with your own confidential information. You may disclose Licensed Software
to the extent required by a court or under operation of law or order provided
that you notify NXP of such requirement prior to disclosure, which you only
disclose the minimum of the required information, and that you allow NXP the
opportunity to object to such court or other legal body requiring such
disclosure.
18.       TRADEMARKS.  You are not authorized to use any NXP trademarks, brand
names, or logos.
19        ENTIRE AGREEMENT.  This Agreement constitutes the entire agreement
between you and NXP regarding the subject matter of this Agreement, and
supersedes all prior communications, negotiations, understandings, agreements
or representations, either written or oral, if any. This Agreement may only be
amended in written form, signed by you and NXP.
20.        SEVERABILITY.  If any provision of this Agreement is held for any
reason to be invalid or unenforceable, then the remaining provisions of this
Agreement will be unimpaired and, unless a modification or replacement of the
invalid or unenforceable provision is further held to deprive you or NXP of a
material benefit, in which case the Agreement will immediately terminate, the
invalid or unenforceable provision will be replaced with a provision that is
valid and enforceable and that comes closest to the intention underlying the
invalid or unenforceable provision.
21.        NO WAIVER.  The waiver by NXP of any breach of any provision of this
Agreement will not operate or be construed as a waiver of any other or a
subsequent breach of the same or a different provision.
22.        AUDIT.  You will keep full, clear and accurate records with respect
to your compliance with the limited license rights granted under this Agreement
for three years following expiration or termination of this Agreement. NXP will
have the right, either itself or through an independent certified public
accountant to examine and audit, at NXP's expense, not more than once a year,
and during normal business hours, all such records that may bear upon your
compliance with the limited license rights granted above. You must make prompt
adjustment to compensate for any errors and/or omissions disclosed by such
examination or audit.
23.        NOTICES.             All notices and communications under this
Agreement will be made in writing, and will be effective when received at the
following addresses:
          NXP:      	NXP B.V.
                      	High Tech Campus 60
                        	5656 AG Eindhoven
                       	 The Netherlands
                   	ATTN: Legal Department
You:              The address provided at registration will be used.
24.        RELATIONSHIP OF THE PARTIES.     The parties are independent
contractors. Nothing in this Agreement will be construed to create any
partnership, joint venture, or similar relationship. Neither party is
authorized to bind the other to any obligations with third parties.
25.        SUCCESSION AND ASSIGNMENT.   This Agreement will be binding upon and
inure to the benefit of the parties and their permitted successors and assigns.
 You may not assign this Agreement, or any part of this Agreement, without the
prior written approval of NXP, which approval will not be unreasonably withheld
or delayed. NXP may assign this Agreement, or any part of this Agreement, in
its sole discretion.
 
APPENDIX A
Other License Grants and Restrictions:
The Licensed Software may include some or all of the following software, which
is either 1) Third Party Software or 2) NXP proprietary software subject to
different terms than those in the Agreement. If the Software Content Register
that accompanies the Licensed Software identifies any of the following Third
Party Software or specific components of the NXP proprietary software, the
following terms apply to the extent they deviate from the terms in the
Agreement:
Amazon: Use of the Amazon software constitutes your acceptance of the terms of
the Amazon Program Materials License Agreement (including the AVS Component
Schedule, if applicable), located at
https://developer.amazon.com/support/legal/pml.  All Amazon software is hereby
designated "Amazon confidential".  Amazon is a third-party beneficiary to this
Agreement with respect to the Amazon software.
Amphion Semiconductor Ltd.: Distribution of Amphion software must be a part of,
or embedded within, Authorized Systems that include an Amphion Video Decoder.
Atheros: Use of Atheros software is limited to evaluation and demonstration
only.  Permitted distributions must be similarly limited. Further rights must
be obtained directly from Atheros.
ATI (AMD): Distribution of ATI software must be a part of, or embedded within,
Authorized Systems that include a ATI graphics processor core.
Broadcom Corporation: Your use of Broadcom Corporation software is restricted
to Authorized Systems that incorporate a compatible integrated circuit device
manufactured or sold by Broadcom.
Cadence Design Systems: Use of Cadence audio codec software is limited to
distribution only of one copy per single NXP Product. The license granted
herein to the Cadence Design Systems HiFi aacPlus Audio Decoder software does
not include a license to the AAC family of technologies which you or your
customer may need to obtain. Configuration tool outputs may only be distributed
by licensees of the relevant Cadence SDK and distribution is limited to
distribution of one copy embedded in a single NXP Product.
Cirque Corporation: Use of Cirque Corporation technology is limited to
evaluation, demonstration, or certification testing only. Permitted
distributions must be similarly limited. Further rights, including but not
limited to ANY commercial distribution rights, must be obtained directly from
Cirque Corporation.
Coding Technologies (Dolby Labs): Use of CTS software is limited to evaluation
and demonstration only.  Permitted distributions must be similarly limited.
Further rights must be obtained from Dolby Laboratories.
CSR: Use of Cambridge Silicon Radio, Inc. ("CSR") software is limited to
evaluation and demonstration only.  Permitted distributions must be similarly
limited.  Further rights must be obtained directly from CSR.
Cypress Semiconductor Corporation: WWD RTOS source code may only be used in
accordance with the Cypress IOT Community License Agreement located at
https://community.cypress.com/terms-and-conditions!input.jspa?displayOnly=true.
Future Technology Devices International Ltd.: Future Technology Devices
International software must be used consistent with the terms found here:
http://www.ftdichip.com/Drivers/FTDriverLicenceTerms.htm
Global Locate (Broadcom Corporation): Use of Global Locate, Inc. software is
limited to evaluation and demonstration only.  Permitted distributions must be
similarly limited.  Further rights must be obtained from Global Locate.
Microsoft: Except for Microsoft PlayReady software, if the Licensed Software
includes software owned by Microsoft Corporation ("Microsoft"), it is subject
to the terms of your license with Microsoft (the "Microsoft Underlying Licensed
Software") and as such, NXP grants no license to you, beyond evaluation and
demonstration in connection with NXP processors, in the Microsoft Underlying
Licensed Software.  You must separately obtain rights beyond evaluation and
demonstration in connection with the Microsoft Underlying Licensed Software
from Microsoft. Microsoft does not provide support services for the components
provided to you through this Agreement.  If you have any questions or require
technical assistance, please contact NXP.  Microsoft Corporation is a third
party beneficiary to this Agreement with the right to enforce the terms of this
Agreement.  TO THE MAXIMUM EXTENT PERMITTED BY LAW, MICROSOFT AND ITS
AFFILIATES DISCLAIM ANY WARRANTIES FOR THE MICROSOFT UNDERLYING LICENSED
SOFTWARE.  TO THE MAXIMUM EXTENT PERMITTED BY LAW, NEITHER MICROSOFT NOR ITS
AFFILIATES WILL BE LIABLE, WHETHER IN CONTRACT, TORT, OR OTHERWISE, FOR ANY
DIRECT, INCIDENTAL, SPECIAL, INDIRECT, CONSEQUENTIAL OR PUNITIVE DAMAGES,
INCLUDING, BUT NOT LIMITED TO, DAMAGES FOR ANY LOSS OF USE, LOSS OF TIME,
INCONVENIENCE, COMMERCIAL LOSS, OR LOST PROFITS, SAVINGS, OR REVENUES, ARISING
FROM THE FROM THE USE OF THE MICROSOFT UNDERLYING LICENSED SOFTWARE.  With
respect to the Microsoft PlayReady software, you will have the license rights
granted in Section 2, provided that you may not use the Microsoft PlayReady
software unless you have entered into a Microsoft PlayReady Master Agreement
and license directly with Microsoft.
MindTree: Notwithstanding the terms contained in Section 2.3 (a), if the
Licensed Software includes proprietary software of MindTree in source code
format, Licensee may make modifications and create derivative works only to the
extent necessary for debugging of the Licensed Software.
MM SOLUTIONS EAD:  Use of MM SOLUTIONS 2A (Auto Exposure and Auto White
Balance) software is limited to evaluation and demonstration only.  Permitted
distributions must be similarly limited. Further rights must be obtained
directly from MM SOLUTIONS.
MPEG LA: Use of MPEG LA audio or video codec technology is limited to
evaluation and demonstration only. Permitted distributions must be similarly
limited. Further rights must be obtained directly from MPEG LA.
MQX RTOS Code: MQX RTOS source code may not be re-distributed by any NXP
Licensee under any circumstance, even by a signed written amendment to this
Agreement.
NXP Wireless Charging Library: License to the Software is limited to use in
inductive coupling or wireless charging applications
Opus: Use of Opus software must be consistent with the terms of the Opus
license which can be found at: http://www.opus-codec.org/license/
Oracle JRE (Java): The Oracle JRE must be used consistent with terms found
here: http://java.com/license
P&E Micro: P&E Software must be used consistent with the terms found here:
http://www.pemicro.com/licenses/gdbserver/license_gdb.pdf
Pro Design Electronic: Licensee may not modify, create derivative works based
on, or copy the Pro Design software, documentation, hardware execution key or
the accompanying materials.  Licensee shall not use Pro Design's or any of its
licensors names, logos or trademarks to market the Authorized System.  Only NXP
customers and distributors are permitted to further redistribute the Pro Design
software and only as part of an Authorized System which contains the Pro Design
software.
Qualcomm Atheros, Inc.: Notwithstanding anything in this Agreement, Qualcomm
Atheros, Inc. Wi-Fi software must be used strictly in accordance with the
Qualcomm Atheros, Inc. Technology License Agreement that accompanies such
software.  Any other use is expressly prohibited.
Real Networks - GStreamer Optimized Real Format Client Code implementation or
OpenMax Optimized Real Format Client Code: Use of the GStreamer Optimized Real
Format Client Code, or OpenMax Optimized Real Format Client code is restricted
to applications in the automotive market.  Licensee must be a final
manufacturer in good standing with a current license with Real Networks for the
commercial use and distribution of products containing the GStreamer Optimized
Real Format Client Code implementation or OpenMax Optimized Real Format Client
Code
Real Time Engineers Ltd.:  Any FreeRTOS source code, whether modified or in its
original release form, or whether in whole or in part, can only be distributed
by you under the terms of version 2 of the GNU General Public License plus this
exception.  An independent module is a module which is not derived from or
based on FreeRTOS.
Clause 1: Linking FreeRTOS with other modules is making a combined work based
on FreeRTOS. Thus, the terms and conditions of the GNU General Public License
V2 cover the whole combination.
As a special exception, the copyright holders of FreeRTOS give you permission
to link FreeRTOS with independent modules to produce a statically linked
executable, regardless of the license terms of these independent modules, and
to copy and distribute the resulting executable under terms of your choice,
provided that you also meet, for each linked independent module, the terms and
conditions of the license of that module.  An independent module is a module
which is not derived from or based on FreeRTOS.
Clause 2:  FreeRTOS may not be used for any competitive or comparative purpose,
including the publication of any form of run time or compile time metric,
without the express permission of Real Time Engineers Ltd. (this is the norm
within the industry and is intended to ensure information accuracy).
RivieraWaves SAS (a member of the CEVA, Inc. family of companies): You may not
use the RivieraWaves intellectual property licensed under this Agreement if you
develop, market, and/or license products similar to such RivieraWaves
intellectual property.  Such use constitutes a breach of this Agreement.  Any
such use rights must be obtained directly from RivieraWaves.
SanDisk Corporation: If the Licensed Software includes software developed by
SanDisk Corporation ("SanDisk"), you must separately obtain the rights to
reproduce and distribute this software in source code form from SanDisk.
Please follow these easy steps to obtain the license and software:
(1) Contact your local SanDisk sales representative to obtain the SanDisk
License Agreement.
(2) Sign the license agreement.  Fax the signed agreement to SanDisk USA
marketing department at 408-542-0403.  The license will be valid when fully
executed by SanDisk.
(3) If you have specific questions, please send an email to sales@sandisk.com
You may only use the SanDisk Corporation Licensed Software on products
compatible with a SanDisk Secure Digital Card.  You may not use the SanDisk
Corporation Licensed Software on any memory device product.  SanDisk retains
all rights to any modifications or derivative works to the SanDisk Corporation
Licensed Software that you may create.
SEGGER Microcontroller - emWin Software: Your use of SEGGER emWin software is
restricted to NXP ARM7, ARM9, Cortex-M0, Cortex-M3, and Cortex-M4 based devices
only.
SEGGER Microcontroller - J-Link/J-Trace Software: Segger software must be used
consistent with the terms found here: http://www.segger.com/jlink-software.html
Synopsys/Target Compiler Technologies: Your use of the Synopsys/Target Compiler
Technologies Licensed Software and related documentation is subject to the
following:
(1) Duration of the license for the Licensed Software is limited to 12 months,
unless otherwise specified in the license file.
(2) The Licensed Software is usable by one user at a time on a single
designated computer, unless otherwise agreed by Synopsys.
(3) Licensed Software and documentation are to be used only on a designated
computer at the designated physical address provided by you on the APEX license
form.
(4) The Licensed Software is not sub-licensable.
Texas Instruments: Your use of Texas Instruments Inc. WiLink8 Licensed Software
is restricted to NXP SoC based systems that include a compatible connectivity
device manufactured by TI.
Vivante: Distribution of Vivante software must be a part of, or embedded
within, Authorized Systems that include a Vivante Graphics Processing Unit.
EOEULA

    echo -n "Do you accept the Vivante EULA you just read? (y/N) "
    read REPLY
    if [ "$REPLY" != "y" ] && [ "$REPLY" != "Y" ]; then
        echo "NXP EULA has not been accepted..."
        exit 1
    fi

    echo "NXP EULA has been accepted."
    echo
fi

# If we get here, EULA has been auto-accepted or interactively accepted.
# Further login shells should not need to accept EULA again
touch /tmp/nxp-eula-accepted

