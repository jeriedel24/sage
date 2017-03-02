r"""
Declarations for inline functions from PARI.

This file contains all declarations from headers/pariinl.h from the
PARI distribution.  All these functions are simple inline functions.
This file is included by sage/libs/cypari2/paridecl.pxd


AUTHORS:

 - Jeroen Demeyer (2010-08-15): initial version (#9898)

"""

cdef extern from *:     # PARI headers already included by types.pxd

    # pariinl.h
    GEN    abgrp_get_cyc(GEN x)
    GEN    abgrp_get_gen(GEN x)
    GEN    abgrp_get_no(GEN x)
    GEN    bid_get_arch(GEN bid)
    GEN    bid_get_cyc(GEN bid)
    GEN    bid_get_gen(GEN bid)
    GEN    bid_get_gen_nocheck(GEN bid)
    GEN    bid_get_grp(GEN bid)
    GEN    bid_get_ideal(GEN bid)
    GEN    bid_get_mod(GEN bid)
    GEN    bid_get_no(GEN bid)
    GEN    bid_get_U(GEN bid)
    GEN    bnf_get_clgp(GEN bnf)
    GEN    bnf_get_cyc(GEN bnf)
    GEN    bnf_get_fu(GEN bnf)
    GEN    bnf_get_fu_nocheck(GEN bnf)
    GEN    bnf_get_gen(GEN bnf)
    GEN    bnf_get_logfu(GEN bnf)
    GEN    bnf_get_nf(GEN bnf)
    GEN    bnf_get_no(GEN bnf)
    GEN    bnf_get_reg(GEN bnf)
    GEN    bnf_get_tuU(GEN bnf)
    long   bnf_get_tuN(GEN bnf)
    GEN    bnr_get_bnf(GEN bnr)
    GEN    bnr_get_clgp(GEN bnr)
    GEN    bnr_get_cyc(GEN bnr)
    GEN    bnr_get_gen(GEN bnr)
    GEN    bnr_get_gen_nocheck(GEN bnr)
    GEN    bnr_get_no(GEN bnr)
    GEN    bnr_get_bid(GEN bnr)
    GEN    bnr_get_mod(GEN bnr)
    GEN    bnr_get_nf(GEN bnr)
    GEN    ell_get_a1(GEN e)
    GEN    ell_get_a2(GEN e)
    GEN    ell_get_a3(GEN e)
    GEN    ell_get_a4(GEN e)
    GEN    ell_get_a6(GEN e)
    GEN    ell_get_b2(GEN e)
    GEN    ell_get_b4(GEN e)
    GEN    ell_get_b6(GEN e)
    GEN    ell_get_b8(GEN e)
    GEN    ell_get_c4(GEN e)
    GEN    ell_get_c6(GEN e)
    GEN    ell_get_disc(GEN e)
    GEN    ell_get_j(GEN e)
    long   ell_get_type(GEN e)
    int    ell_is_inf(GEN z)
    GEN    ellinf()
    GEN    ellff_get_field(GEN x)
    GEN    ellff_get_a4a6(GEN x)
    GEN    ellnf_get_nf(GEN x)
    GEN    ellQp_get_p(GEN E)
    long   ellQp_get_prec(GEN E)
    GEN    ellQp_get_zero(GEN x)
    long   ellR_get_prec(GEN x)
    long   ellR_get_sign(GEN x)

    GEN    gal_get_pol(GEN gal)
    GEN    gal_get_p(GEN gal)
    GEN    gal_get_e(GEN gal)
    GEN    gal_get_mod(GEN gal)
    GEN    gal_get_roots(GEN gal)
    GEN    gal_get_invvdm(GEN gal)
    GEN    gal_get_den(GEN gal)
    GEN    gal_get_group(GEN gal)
    GEN    gal_get_gen(GEN gal)
    GEN    gal_get_orders(GEN gal)
    GEN    idealchineseinit(GEN nf, GEN x)
    GEN    idealpseudomin(GEN I, GEN G)
    GEN    idealpseudomin_nonscalar(GEN I, GEN G)
    GEN    idealpseudored(GEN I, GEN G)
    GEN    idealred_elt(GEN nf, GEN I)
    GEN    idealred(GEN nf, GEN I)
    GEN    modpr_get_pr(GEN x)
    GEN    modpr_get_p(GEN x)
    GEN    modpr_get_T(GEN x)
    GEN    nf_get_M(GEN nf)
    GEN    nf_get_G(GEN nf)
    GEN    nf_get_Tr(GEN nf)
    GEN    nf_get_diff(GEN nf)
    long   nf_get_degree(GEN nf)
    GEN    nf_get_disc(GEN nf)
    GEN    nf_get_index(GEN nf)
    GEN    nf_get_invzk(GEN nf)
    GEN    nf_get_pol(GEN nf)
    long   nf_get_r1(GEN nf)
    long   nf_get_r2(GEN nf)
    GEN    nf_get_ramified_primes(GEN nf)
    GEN    nf_get_roots(GEN nf)
    GEN    nf_get_roundG(GEN nf)
    void   nf_get_sign(GEN nf, long *r1, long *r2)
    long   nf_get_varn(GEN nf)
    GEN    nf_get_zk(GEN nf)
    long   pr_get_e(GEN pr)
    long   pr_get_f(GEN pr)
    GEN    pr_get_gen(GEN pr)
    GEN    pr_get_p(GEN pr)
    GEN    pr_get_tau(GEN pr)
    int    pr_is_inert(GEN P)
    GEN    pr_norm(GEN pr)
    GEN    rnf_get_alpha(GEN rnf)
    long   rnf_get_absdegree(GEN rnf)
    long   rnf_get_degree(GEN rnf)
    GEN    rnf_get_idealdisc(GEN rnf)
    GEN    rnf_get_invzk(GEN rnf)
    GEN    rnf_get_k(GEN rnf)
    GEN    rnf_get_map(GEN rnf)
    GEN    rnf_get_nf(GEN rnf)
    long   rnf_get_nfdegree(GEN rnf)
    GEN    rnf_get_nfpol(GEN rnf)
    long   rnf_get_nfvarn(GEN rnf)
    GEN    rnf_get_pol(GEN rnf)
    GEN    rnf_get_polabs(GEN rnf)
    GEN    rnf_get_zk(GEN nf)
    void   rnf_get_nfzk(GEN rnf, GEN *b, GEN *cb)
    long   rnf_get_varn(GEN rnf)

    long   closure_arity(GEN C)
    char * closure_codestr(GEN C)
    GEN    closure_get_code(GEN C)
    GEN    closure_get_oper(GEN C)
    GEN    closure_get_data(GEN C)
    GEN    closure_get_dbg(GEN C)
    GEN    closure_get_text(GEN C)
    GEN    closure_get_frame(GEN C)
    long   closure_is_variadic(GEN C)

    GEN    addmuliu(GEN x, GEN y, ulong u)
    GEN    addmuliu_inplace(GEN x, GEN y, ulong u)
    GEN    lincombii(GEN u, GEN v, GEN x, GEN y)
    GEN    mulsubii(GEN y, GEN z, GEN x)
    GEN    submulii(GEN x, GEN y, GEN z)
    GEN    submuliu(GEN x, GEN y, ulong u)
    GEN    submuliu_inplace(GEN x, GEN y, ulong u)

    GEN    FpXQ_add(GEN x, GEN y, GEN T, GEN p)
    GEN    FpXQ_sub(GEN x, GEN y, GEN T, GEN p)
    GEN    Flxq_add(GEN x, GEN y, GEN T, ulong p)
    GEN    Flxq_sub(GEN x, GEN y, GEN T, ulong p)

    GEN    FpXQX_div(GEN x, GEN y, GEN T, GEN p)
    GEN    FlxqX_div(GEN x, GEN y, GEN T, ulong p)

    GEN    Fq_red(GEN x, GEN T, GEN p)
    GEN    Fq_to_FpXQ(GEN x, GEN T, GEN p)
    GEN    gener_Fq_local(GEN T, GEN p, GEN L)
    GEN    FqX_Fp_mul(GEN P, GEN U, GEN T, GEN p)
    GEN    FqX_Fq_mul(GEN P, GEN U, GEN T, GEN p)
    GEN    FqX_add(GEN x, GEN y, GEN T, GEN p)
    GEN    FqX_div(GEN x, GEN y, GEN T, GEN p)
    GEN    FqX_div_by_X_x(GEN x, GEN y, GEN T, GEN p, GEN *z)
    GEN    FqX_divrem(GEN x, GEN y, GEN T, GEN p, GEN *z)
    GEN    FqX_extgcd(GEN P, GEN Q, GEN T, GEN p, GEN *U, GEN *V)
    GEN    FqX_gcd(GEN P, GEN Q, GEN T, GEN p)
    GEN    FqX_get_red(GEN S, GEN T, GEN p)
    GEN    FqX_mul(GEN x, GEN y, GEN T, GEN p)
    GEN    FqX_mulu(GEN x, ulong y, GEN T, GEN p)
    GEN    FqX_neg(GEN x, GEN T, GEN p)
    GEN    FqX_powu(GEN x, ulong n, GEN T, GEN p)
    GEN    FqX_red(GEN z, GEN T, GEN p)
    GEN    FqX_rem(GEN x, GEN y, GEN T, GEN p)
    GEN    FqX_sqr(GEN x, GEN T, GEN p)
    GEN    FqX_sub(GEN x, GEN y, GEN T, GEN p)

    GEN    FqXQ_add(GEN x, GEN y, GEN S, GEN T, GEN p)
    GEN    FqXQ_div(GEN x, GEN y, GEN S, GEN T, GEN p)
    GEN    FqXQ_inv(GEN x, GEN S, GEN T, GEN p)
    GEN    FqXQ_invsafe(GEN x, GEN S, GEN T, GEN p)
    GEN    FqXQ_mul(GEN x, GEN y, GEN S, GEN T, GEN p)
    GEN    FqXQ_pow(GEN x, GEN n, GEN S, GEN T, GEN p)
    GEN    FqXQ_sqr(GEN x, GEN S, GEN T, GEN p)
    GEN    FqXQ_sub(GEN x, GEN y, GEN S, GEN T, GEN p)

    ulong  F2m_coeff(GEN x, long a, long b)
    void   F2m_clear(GEN x, long a, long b)
    void   F2m_flip(GEN x, long a, long b)
    void   F2m_set(GEN x, long a, long b)
    void   F2v_clear(GEN x, long v)
    ulong  F2v_coeff(GEN x, long v)
    void   F2v_flip(GEN x, long v)
    GEN    F2v_to_F2x(GEN x, long sv)
    void   F2v_set(GEN x, long v)
    void   F2x_clear(GEN x, long v)
    ulong  F2x_coeff(GEN x, long v)
    void   F2x_flip(GEN x, long v)
    void   F2x_set(GEN x, long v)
    int    F2x_equal1(GEN x)
    int    F2x_equal(GEN V, GEN W)
    GEN    F2x_div(GEN x, GEN y)
    GEN    F2x_renormalize(GEN x, long lx)
    GEN    F2m_copy(GEN x)
    GEN    F2v_copy(GEN x)
    GEN    F2v_ei(long n, long i)
    GEN    Flm_copy(GEN x)
    GEN    Flv_copy(GEN x)
    int    Flx_equal1(GEN x)
    GEN    Flx_copy(GEN x)
    GEN    Flx_div(GEN x, GEN y, ulong p)
    ulong  Flx_lead(GEN x)
    GEN    Flx_mulu(GEN x, ulong a, ulong p)
    GEN    FpV_FpC_mul(GEN x, GEN y, GEN p)
    GEN    FpXQX_renormalize(GEN x, long lx)
    GEN    FpXX_renormalize(GEN x, long lx)
    GEN    FpX_div(GEN x, GEN y, GEN p)
    GEN    FpX_renormalize(GEN x, long lx)
    GEN    Fp_add(GEN a, GEN b, GEN m)
    GEN    Fp_addmul(GEN x, GEN y, GEN z, GEN p)
    GEN    Fp_center(GEN u, GEN p, GEN ps2)
    GEN    Fp_div(GEN a, GEN b, GEN m)
    GEN    Fp_halve(GEN y, GEN p)
    GEN    Fp_inv(GEN a, GEN m)
    GEN    Fp_invsafe(GEN a, GEN m)
    GEN    Fp_mul(GEN a, GEN b, GEN m)
    GEN    Fp_muls(GEN a, long b, GEN m)
    GEN    Fp_mulu(GEN a, ulong b, GEN m)
    GEN    Fp_neg(GEN b, GEN m)
    GEN    Fp_red(GEN x, GEN p)
    GEN    Fp_sqr(GEN a, GEN m)
    GEN    Fp_sub(GEN a, GEN b, GEN m)
    GEN    GENbinbase(GENbin *p)
    GEN    Q_abs(GEN x)
    GEN    Q_abs_shallow(GEN x)
    int    QV_isscalar(GEN x)
    GEN    RgC_fpnorml2(GEN x, long prec)
    GEN    RgC_gtofp(GEN x, long prec)
    GEN    RgC_gtomp(GEN x, long prec)
    void   RgM_dimensions(GEN x, long *m, long *n)
    GEN    RgM_fpnorml2(GEN x, long prec)
    GEN    RgM_gtofp(GEN x, long prec)
    GEN    RgM_gtomp(GEN x, long prec)
    GEN    RgM_inv(GEN a)
    GEN    RgM_minor(GEN a, long i, long j)
    GEN    RgM_shallowcopy(GEN x)
    int    RgV_isscalar(GEN x)
    int    RgV_is_ZV(GEN x)
    int    RgV_is_QV(GEN x)
    long   RgX_equal_var(GEN x, GEN y)
    int    RgX_is_monomial(GEN x)
    int    RgX_is_rational(GEN x)
    int    RgX_is_QX(GEN x)
    int    RgX_is_ZX(GEN x)
    int    RgX_isscalar(GEN x)
    GEN    RgX_shift_inplace(GEN x, long v)
    void   RgX_shift_inplace_init(long v)
    GEN    RgXQ_mul(GEN x, GEN y, GEN T)
    GEN    RgXQ_sqr(GEN x, GEN T)
    GEN    RgXQX_div(GEN x, GEN y, GEN T)
    GEN    RgXQX_rem(GEN x, GEN y, GEN T)
    GEN    RgX_coeff(GEN x, long n)
    GEN    RgX_copy(GEN x)
    GEN    RgX_div(GEN x, GEN y)
    GEN    RgX_fpnorml2(GEN x, long prec)
    GEN    RgX_gtofp(GEN x, long prec)
    GEN    RgX_rem(GEN x, GEN y)
    GEN    RgX_renormalize(GEN x)
    GEN    Rg_col_ei(GEN x, long n, long i)
    GEN    ZC_hnfrem(GEN x, GEN y)
    GEN    ZM_hnfrem(GEN x, GEN y)
    GEN    ZM_lll(GEN x, double D, long f)
    int    ZV_dvd(GEN x, GEN y)
    int    ZV_isscalar(GEN x)
    GEN    ZV_to_zv(GEN x)
    GEN    ZX_ZXY_resultant(GEN a, GEN b)
    int    ZX_equal1(GEN x)
    GEN    ZX_renormalize(GEN x, long lx)
    GEN    ZXQ_mul(GEN x, GEN y, GEN T)
    GEN    ZXQ_sqr(GEN x, GEN T)
    long   Z_ispower(GEN x, ulong k)
    long   Z_issquare(GEN x)
    GEN    absfrac(GEN x)
    GEN    absfrac_shallow(GEN x)
    GEN    affc_fixlg(GEN x, GEN res)
    GEN    bin_copy(GENbin *p)
    long   bit_accuracy(long x)
    double bit_accuracy_mul(long x, double y)
    long   bit_prec(GEN x)
    int    both_odd(long x, long y)
    GEN    cbrtr(GEN x)
    GEN    cgetc(long x)
    GEN    cgetalloc(long t, size_t l)
    GEN    cxcompotor(GEN z, long prec)
    void   cgiv(GEN x)
    GEN    col_ei(long n, long i)
    GEN    const_col(long n, GEN x)
    GEN    const_vec(long n, GEN x)
    GEN    const_vecsmall(long n, long c)
    GEN    constant_term(GEN x)
    GEN    cxnorm(GEN x)
    GEN    cyclic_perm(long l, long d)
    double dbllog2r(GEN x)
    long   degpol(GEN x)
    long   divsBIL(long n)
    void   gabsz(GEN x, long prec, GEN z)
    GEN    gaddgs(GEN y, long s)
    void   gaddz(GEN x, GEN y, GEN z)
    int    gcmpgs(GEN y, long s)
    void   gdiventz(GEN x, GEN y, GEN z)
    GEN    gdivsg(long s, GEN y)
    void   gdivz(GEN x, GEN y, GEN z)
    GEN    gen_I()
    void   gerepileall(pari_sp av, int n, ...)
    void   gerepilecoeffs(pari_sp av, GEN x, int n)
    GEN    gerepilecopy(pari_sp av, GEN x)
    void   gerepilemany(pari_sp av, GEN* g[], int n)
    int    gequalgs(GEN y, long s)
    GEN    gerepileupto(pari_sp av, GEN q)
    GEN    gerepileuptoint(pari_sp av, GEN q)
    GEN    gerepileuptoleaf(pari_sp av, GEN q)
    GEN    gmaxsg(long s, GEN y)
    GEN    gminsg(long s, GEN y)
    void   gmodz(GEN x, GEN y, GEN z)
    void   gmul2nz(GEN x, long s, GEN z)
    GEN    gmulgs(GEN y, long s)
    void   gmulz(GEN x, GEN y, GEN z)
    void   gnegz(GEN x, GEN z)
    void   gshiftz(GEN x, long s, GEN z)
    GEN    gsubgs(GEN y, long s)
    void   gsubz(GEN x, GEN y, GEN z)
    double gtodouble(GEN x)
    GEN    gtofp(GEN z, long prec)
    GEN    gtomp(GEN z, long prec)
    long   gtos(GEN x)
    long   gval(GEN x, long v)
    GEN    identity_perm(long l)
    int    equali1(GEN n)
    int    equalim1(GEN n)
    long   inf_get_sign(GEN x)
    int    is_bigint(GEN n)
    int    is_const_t(long t)
    int    is_extscalar_t(long t)
    int    is_intreal_t(long t)
    int    is_matvec_t(long t)
    int    is_noncalc_t(long tx)
    int    is_pm1(GEN n)
    int    is_rational_t(long t)
    int    is_recursive_t(long t)
    int    is_scalar_t(long t)
    int    is_universal_constant(GEN x)
    int    is_vec_t(long t)
    int    isint1(GEN x)
    int    isintm1(GEN x)
    int    isintzero(GEN x)
    int    ismpzero(GEN x)
    int    isonstack(GEN x)
    void   killblock(GEN x)
    GEN    leading_term(GEN x)
    long   lgcols(GEN x)
    long   lgpol(GEN x)
    GEN    matpascal(long n)
    GEN    matslice(GEN A, long x1, long x2, long y1, long y2)
    GEN    mkcol(GEN x)
    GEN    mkcol2(GEN x, GEN y)
    GEN    mkcol2s(long x, long y)
    GEN    mkcol3(GEN x, GEN y, GEN z)
    GEN    mkcol3s(long x, long y, long z)
    GEN    mkcol4(GEN x, GEN y, GEN z, GEN t)
    GEN    mkcol4s(long x, long y, long z, long t)
    GEN    mkcol5(GEN x, GEN y, GEN z, GEN t, GEN u)
    GEN    mkcol6(GEN x, GEN y, GEN z, GEN t, GEN u, GEN v)
    GEN    mkcolcopy(GEN x)
    GEN    mkcols(long x)
    GEN    mkcomplex(GEN x, GEN y)
    GEN    mkerr(long n)
    GEN    mkmoo()
    GEN    mkoo()
    GEN    mkfrac(GEN x, GEN y)
    GEN    mkfraccopy(GEN x, GEN y)
    GEN    mkintmod(GEN x, GEN y)
    GEN    mkintmodu(ulong x, ulong y)
    GEN    mkmat(GEN x)
    GEN    mkmat2(GEN x, GEN y)
    GEN    mkmat3(GEN x, GEN y, GEN z)
    GEN    mkmat4(GEN x, GEN y, GEN z, GEN t)
    GEN    mkmat5(GEN x, GEN y, GEN z, GEN t, GEN u)
    GEN    mkmatcopy(GEN x)
    GEN    mkpolmod(GEN x, GEN y)
    GEN    mkqfi(GEN x, GEN y, GEN z)
    GEN    mkquad(GEN n, GEN x, GEN y)
    GEN    mkrfrac(GEN x, GEN y)
    GEN    mkrfraccopy(GEN x, GEN y)
    GEN    mkvec(GEN x)
    GEN    mkvec2(GEN x, GEN y)
    GEN    mkvec2copy(GEN x, GEN y)
    GEN    mkvec2s(long x, long y)
    GEN    mkvec3(GEN x, GEN y, GEN z)
    GEN    mkvec3s(long x, long y, long z)
    GEN    mkvec4(GEN x, GEN y, GEN z, GEN t)
    GEN    mkvec4s(long x, long y, long z, long t)
    GEN    mkvec5(GEN x, GEN y, GEN z, GEN t, GEN u)
    GEN    mkveccopy(GEN x)
    GEN    mkvecs(long x)
    GEN    mkvecsmall(long x)
    GEN    mkvecsmall2(long x, long y)
    GEN    mkvecsmall3(long x, long y, long z)
    GEN    mkvecsmall4(long x, long y, long z, long t)
    void   mpcosz(GEN x, GEN z)
    void   mpexpz(GEN x, GEN z)
    void   mplogz(GEN x, GEN z)
    void   mpsinz(GEN x, GEN z)
    GEN    mul_content(GEN cx, GEN cy)
    GEN    mul_denom(GEN cx, GEN cy)
    long   nbits2nlong(long x)
    long   nbits2extraprec(long x)
    long   nbits2ndec(long x)
    long   nbits2prec(long x)
    long   nbits2lg(long x)
    long   nbrows(GEN x)
    long   nchar2nlong(long x)
    long   ndec2nbits(long x)
    long   ndec2nlong(long x)
    long   ndec2prec(long x)
    void   normalize_frac(GEN z)
    int    odd(long x)
    void   pari_free(void *pointer)
    void*  pari_calloc(size_t size)
    void*  pari_malloc(size_t bytes)
    void*  pari_realloc(void *pointer, size_t size)
    GEN    perm_conj(GEN s, GEN t)
    GEN    perm_inv(GEN x)
    GEN    perm_mul(GEN s, GEN t)
    GEN    pol_0(long v)
    GEN    pol_1(long v)
    GEN    pol_x(long v)
    GEN    pol0_F2x(long sv)
    GEN    pol1_F2x(long sv)
    GEN    polx_F2x(long sv)
    GEN    pol0_Flx(long sv)
    GEN    pol1_Flx(long sv)
    GEN    polx_Flx(long sv)
    GEN    polx_zx(long sv)
    GEN    powii(GEN x, GEN n)
    GEN    powIs(long n)
    long   prec2nbits(long x)
    double prec2nbits_mul(long x, double y)
    long   prec2ndec(long x)
    long   precdbl(long x)
    GEN    quad_disc(GEN x)
    GEN    qfb_disc(GEN x)
    GEN    qfb_disc3(GEN x, GEN y, GEN z)
    GEN    quadnorm(GEN q)
    long   remsBIL(long n)
    GEN    resultant(GEN x, GEN y)
    GEN    row(GEN A, long x1)
    GEN    Flm_row(GEN A, long x0)
    GEN    row_i(GEN A, long x0, long x1, long x2)
    GEN    zm_row(GEN x, long i)
    GEN    rowcopy(GEN A, long x0)
    GEN    rowpermute(GEN A, GEN p)
    GEN    rowslice(GEN A, long x1, long x2)
    GEN    rowslicepermute(GEN A, GEN p, long x1, long x2)
    int    ser_isexactzero(GEN x)
    GEN    shallowcopy(GEN x)
    GEN    sqrfrac(GEN x)
    GEN    sqrti(GEN x)
    GEN    sqrtnr(GEN x, long n)
    GEN    sqrtr(GEN x)
    void   pari_stack_alloc(pari_stack *s, long nb)
    void** pari_stack_base(pari_stack *s)
    void   pari_stack_delete(pari_stack *s)
    void   pari_stack_init(pari_stack *s, size_t size, void **data)
    long   pari_stack_new(pari_stack *s)
    void   pari_stack_pushp(pari_stack *s, void *u)
    long   sturm(GEN x)
    GEN    truecoeff(GEN x, long n)
    GEN    trunc_safe(GEN x)
    GEN    vec_ei(long n, long i)
    GEN    vec_append(GEN v, GEN s)
    GEN    vec_lengthen(GEN v, long n)
    GEN    vec_setconst(GEN v, GEN x)
    GEN    vec_shorten(GEN v, long n)
    GEN    vec_to_vecsmall(GEN z)
    GEN    vecpermute(GEN A, GEN p)
    GEN    vecreverse(GEN A)
    void   vecreverse_inplace(GEN y)
    GEN    vecsmallpermute(GEN A, GEN p)
    GEN    vecslice(GEN A, long y1, long y2)
    GEN    vecslicepermute(GEN A, GEN p, long y1, long y2)
    GEN    vecsplice(GEN a, long j)
    GEN    vecsmall_append(GEN V, long s)
    long   vecsmall_coincidence(GEN u, GEN v)
    GEN    vecsmall_concat(GEN u, GEN v)
    GEN    vecsmall_copy(GEN x)
    GEN    vecsmall_ei(long n, long i)
    long   vecsmall_indexmax(GEN x)
    long   vecsmall_indexmin(GEN x)
    long   vecsmall_isin(GEN v, long x)
    GEN    vecsmall_lengthen(GEN v, long n)
    int    vecsmall_lexcmp(GEN x, GEN y)
    long   vecsmall_max(GEN v)
    long   vecsmall_min(GEN v)
    long   vecsmall_pack(GEN V, long base, long mod)
    int    vecsmall_prefixcmp(GEN x, GEN y)
    GEN    vecsmall_prepend(GEN V, long s)
    GEN    vecsmall_shorten(GEN v, long n)
    GEN    vecsmall_to_col(GEN z)
    GEN    vecsmall_to_vec(GEN z)
    void   vecsmalltrunc_append(GEN x, long t)
    GEN    vecsmalltrunc_init(long l)
    void   vectrunc_append(GEN x, GEN t)
    void   vectrunc_append_batch(GEN x, GEN y)
    GEN    vectrunc_init(long l)
    GEN    zc_to_ZC(GEN x)
    GEN    zero_F2m(long n, long m)
    GEN    zero_F2m_copy(long n, long m)
    GEN    zero_F2v(long m)
    GEN    zero_F2x(long sv)
    GEN    zero_Flm(long m, long n)
    GEN    zero_Flm_copy(long m, long n)
    GEN    zero_Flv(long n)
    GEN    zero_Flx(long sv)
    GEN    zero_zm(long x, long y)
    GEN    zero_zv(long x)
    GEN    zero_zx(long sv)
    GEN    zerocol(long n)
    GEN    zeromat(long m, long n)
    GEN    zeromatcopy(long m, long n)
    GEN    zeropadic(GEN p, long e)
    GEN    zeropadic_shallow(GEN p, long e)
    GEN    zeropol(long v)
    GEN    zeroser(long v, long e)
    GEN    zerovec(long n)
    GEN    zm_copy(GEN x)
    GEN    zm_to_zxV(GEN x, long sv)
    GEN    zm_transpose(GEN x)
    GEN    zv_copy(GEN x)
    GEN    zv_to_ZV(GEN x)
    GEN    zv_to_zx(GEN x, long sv)
    GEN    zx_renormalize(GEN x, long l)
    GEN    zx_shift(GEN x, long n)
    GEN    zx_to_zv(GEN x, long N)

    GEN     err_get_compo(GEN e, long i)
    long    err_get_num(GEN e)
    void    pari_err_BUG(char *f)
    void    pari_err_COMPONENT(char *f, char *op, GEN l, GEN x)
    void    pari_err_CONSTPOL(char *f)
    void    pari_err_COPRIME(char *f, GEN x, GEN y)
    void    pari_err_DIM(char *f)
    void    pari_err_DOMAIN(char *f, char *v, char *op, GEN l, GEN x)
    void    pari_err_FILE(char *f, char *g)
    void    pari_err_FLAG(char *f)
    void    pari_err_IMPL(char *f)
    void    pari_err_INV(char *f, GEN x)
    void    pari_err_IRREDPOL(char *f, GEN x)
    void    pari_err_MAXPRIME(ulong c)
    void    pari_err_MODULUS(char *f, GEN x, GEN y)
    void    pari_err_OP(char *f, GEN x, GEN y)
    void    pari_err_OVERFLOW(char *f)
    void    pari_err_PACKAGE(char *f)
    void    pari_err_PREC(char *f)
    void    pari_err_PRIME(char *f, GEN x)
    void    pari_err_PRIORITY(char *f, GEN x, char *op, long v)
    void    pari_err_SQRTN(char *f, GEN x)
    void    pari_err_TYPE(char *f, GEN x)
    void    pari_err_TYPE2(char *f, GEN x, GEN y)
    void    pari_err_VAR(char *f, GEN x, GEN y)
    void    pari_err_ROOTS0(char *f)
