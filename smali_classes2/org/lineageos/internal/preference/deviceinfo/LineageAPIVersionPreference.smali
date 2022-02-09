.class public Lorg/lineageos/internal/preference/deviceinfo/LineageAPIVersionPreference;
.super Llineageos/preference/SelfRemovingPreference;
.source "LineageAPIVersionPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llineageos/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    invoke-super {p0}, Llineageos/preference/SelfRemovingPreference;->onAttached()V

    const v2, 0x3f090050

    invoke-virtual {p0, v2}, Lorg/lineageos/internal/preference/deviceinfo/LineageAPIVersionPreference;->setTitle(I)V

    sget v1, Llineageos/os/Build$LINEAGE_VERSION;->SDK_INT:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Llineageos/os/Build;->getNameForSDKInt(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/lineageos/internal/preference/deviceinfo/LineageAPIVersionPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
