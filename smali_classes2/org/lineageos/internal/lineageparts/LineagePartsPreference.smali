.class public Lorg/lineageos/internal/lineageparts/LineagePartsPreference;
.super Llineageos/preference/RemotePreference;
.source "LineagePartsPreference.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mPart:Lorg/lineageos/internal/lineageparts/PartInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Landroid/support/v7/preference/R$attr;->preferenceScreenStyle:I

    invoke-direct {p0, p1, p2, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Llineageos/preference/RemotePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lorg/lineageos/internal/lineageparts/PartsList;->get(Landroid/content/Context;)Lorg/lineageos/internal/lineageparts/PartsList;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lineageos/internal/lineageparts/PartsList;->getPartInfo(Ljava/lang/String;)Lorg/lineageos/internal/lineageparts/PartInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Part not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->updatePreference()V

    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->getIntentForActivity()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private updatePreference()V
    .locals 2

    invoke-virtual {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->isAvailable()Z

    move-result v0

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v1}, Lorg/lineageos/internal/lineageparts/PartInfo;->isAvailable()Z

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->setAvailable(Z)V

    :cond_0
    invoke-virtual {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->getSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected getRemoteKey(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onRemoteUpdated(Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v1, ":lineage:part"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, ":lineage:part"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lorg/lineageos/internal/lineageparts/PartInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->mPart:Lorg/lineageos/internal/lineageparts/PartInfo;

    invoke-virtual {v1, v0}, Lorg/lineageos/internal/lineageparts/PartInfo;->updateFrom(Lorg/lineageos/internal/lineageparts/PartInfo;)Z

    invoke-direct {p0}, Lorg/lineageos/internal/lineageparts/LineagePartsPreference;->updatePreference()V

    :cond_0
    return-void
.end method
