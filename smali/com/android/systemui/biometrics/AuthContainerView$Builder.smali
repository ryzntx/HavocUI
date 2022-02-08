.class public Lcom/android/systemui/biometrics/AuthContainerView$Builder;
.super Ljava/lang/Object;
.source "AuthContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/AuthContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/AuthContainerView$Config;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 130
    iput-object p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public build(I)Lcom/android/systemui/biometrics/AuthContainerView;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mModalityMask:I

    .line 175
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView;

    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$Injector;

    invoke-direct {v0}, Lcom/android/systemui/biometrics/AuthContainerView$Injector;-><init>()V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;-><init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lcom/android/systemui/biometrics/AuthContainerView$Injector;)V

    return-object p1
.end method

.method public setBiometricPromptBundle(Landroid/os/Bundle;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-object p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mBiometricPromptBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setCallback(Lcom/android/systemui/biometrics/AuthDialogCallback;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-object p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthDialogCallback;

    return-object p0
.end method

.method public setOpPackageName(Ljava/lang/String;)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-object p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public setOperationId(J)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-wide p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    return-object p0
.end method

.method public setRequireConfirmation(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-boolean p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    return-object p0
.end method

.method public setSkipIntro(Z)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput-boolean p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    return-object p0
.end method

.method public setSysUiSessionId(I)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSysUiSessionId:I

    return-object p0
.end method

.method public setUserId(I)Lcom/android/systemui/biometrics/AuthContainerView$Builder;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Builder;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    iput p1, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    return-object p0
.end method
