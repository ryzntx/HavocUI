.class public Lorg/lineageos/internal/preference/deviceinfo/LineageVendorSecurityPatchPreference;
.super Llineageos/preference/SelfRemovingPreference;
.source "LineageVendorSecurityPatchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llineageos/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private getVendorSecurityPatchLevel()Ljava/lang/String;
    .locals 7

    const-string/jumbo v5, "ro.vendor.build.security_patch"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "ro.lineage.build.vendor_security_patch"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyy-MM-dd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string/jumbo v6, "dMMMMyyyy"

    invoke-static {v5, v6}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onAttached()V
    .locals 1

    invoke-super {p0}, Llineageos/preference/SelfRemovingPreference;->onAttached()V

    const v0, 0x3f090053

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVendorSecurityPatchPreference;->setTitle(I)V

    invoke-direct {p0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVendorSecurityPatchPreference;->getVendorSecurityPatchLevel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVendorSecurityPatchPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 2

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Llineageos/preference/SelfRemovingPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v1}, Lorg/lineageos/internal/preference/deviceinfo/LineageVendorSecurityPatchPreference;->setAvailable(Z)V

    goto :goto_0
.end method
