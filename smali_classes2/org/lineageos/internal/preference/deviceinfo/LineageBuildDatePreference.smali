.class public Lorg/lineageos/internal/preference/deviceinfo/LineageBuildDatePreference;
.super Llineageos/preference/SelfRemovingPreference;
.source "LineageBuildDatePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Llineageos/preference/SelfRemovingPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 3

    invoke-super {p0}, Llineageos/preference/SelfRemovingPreference;->onAttached()V

    const v0, 0x3f09004f

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageBuildDatePreference;->setTitle(I)V

    const-string/jumbo v0, "ro.build.date"

    invoke-virtual {p0}, Lorg/lineageos/internal/preference/deviceinfo/LineageBuildDatePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x3f090054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/preference/deviceinfo/LineageBuildDatePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
