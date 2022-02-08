.class public Lcom/android/keyguard/CarrierTextController$Builder;
.super Ljava/lang/Object;
.source "CarrierTextController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CarrierTextController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSeparator:Ljava/lang/String;

.field private mShowAirplaneMode:Z

.field private mShowMissingSim:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 627
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 628
    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mContext:Landroid/content/Context;

    const p1, 0x1040438

    .line 629
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mSeparator:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/android/keyguard/CarrierTextController;
    .locals 4

    .line 645
    new-instance v0, Lcom/android/keyguard/CarrierTextController;

    iget-object v1, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mSeparator:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mShowAirplaneMode:Z

    iget-boolean p0, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mShowMissingSim:Z

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/keyguard/CarrierTextController;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;ZZ)V

    return-object v0
.end method

.method public setShowAirplaneMode(Z)Lcom/android/keyguard/CarrierTextController$Builder;
    .locals 0

    .line 635
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mShowAirplaneMode:Z

    return-object p0
.end method

.method public setShowMissingSim(Z)Lcom/android/keyguard/CarrierTextController$Builder;
    .locals 0

    .line 640
    iput-boolean p1, p0, Lcom/android/keyguard/CarrierTextController$Builder;->mShowMissingSim:Z

    return-object p0
.end method
