.class public Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;
.super Llineageos/preference/SelfRemovingPreference;
.source "LineageVersionPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mHits:[J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Llineageos/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    return-void
.end method

.method private launchUrl(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v3, "LineageVersionPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to start activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onAttached()V
    .locals 3

    invoke-super {p0}, Llineageos/preference/SelfRemovingPreference;->onAttached()V

    invoke-virtual {p0, p0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const v0, 0x3f090052

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->setTitle(I)V

    const-string/jumbo v0, "ro.modversion"

    invoke-virtual {p0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    iget-object v1, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    iget-object v2, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v6, v1, v4, v2}, Ljava/lang/System;->arraycopy([JI[JII)V

    iget-object v0, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    iget-object v1, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->mHits:[J

    aget-wide v0, v0, v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-string/jumbo v0, "https://www.crdroid.net"

    invoke-direct {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageVersionPreference;->launchUrl(Ljava/lang/String;)V

    :cond_0
    return v6
.end method
