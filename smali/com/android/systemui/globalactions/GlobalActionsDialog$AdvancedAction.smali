.class abstract Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;
.super Ljava/lang/Object;
.source "GlobalActionsDialog.java"

# interfaces
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$Action;
.implements Lcom/android/systemui/globalactions/GlobalActionsDialog$LongPressAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "AdvancedAction"
.end annotation


# instance fields
.field protected mActionType:I

.field private mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mContext:Landroid/content/Context;

.field protected mIconResid:I

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field protected mMessageResId:I

.field protected mRefresh:Landroid/os/Handler;

.field protected mWmFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method public constructor <init>(IIILcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    .line 2022
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2023
    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mActionType:I

    .line 2024
    iput p2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mIconResid:I

    .line 2025
    iput p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mMessageResId:I

    .line 2026
    iput-object p5, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mRefresh:Landroid/os/Handler;

    .line 2027
    iput-object p4, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mWmFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    .line 2028
    iput-object p6, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2029
    iput-object p7, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method

.method private synthetic lambda$onPress$0()V
    .locals 3

    .line 2055
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mActionType:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mRefresh:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mWmFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3600(ILandroid/os/Handler;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 0

    .line 2035
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mContext:Landroid/content/Context;

    .line 2036
    sget p1, Lcom/android/systemui/R$layout;->global_actions_item:I

    const/4 p2, 0x0

    invoke-virtual {p4, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x102000b

    .line 2039
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 2041
    iget p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mMessageResId:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    const p2, 0x1020006

    .line 2043
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    if-eqz p2, :cond_1

    .line 2045
    iget-object p3, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mIconResid:I

    invoke-virtual {p3, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p1
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 2089
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mIconResid:I

    invoke-virtual {p1, p0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMessageResId()I
    .locals 0

    .line 2079
    iget p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mMessageResId:I

    return p0
.end method

.method public isEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public synthetic lambda$onPress$0$GlobalActionsDialog$AdvancedAction()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->lambda$onPress$0()V

    return-void
.end method

.method public onLongPress()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onPress()V
    .locals 3

    .line 2053
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    new-instance v1, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$AdvancedAction$fIuQMzgp5Jl69JvUq3XTvmIDGDY;

    invoke-direct {v1, p0}, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$AdvancedAction$fIuQMzgp5Jl69JvUq3XTvmIDGDY;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2058
    :cond_0
    iget v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mActionType:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mRefresh:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mWmFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$AdvancedAction;->mContext:Landroid/content/Context;

    invoke-static {v0, v1, v2, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$3600(ILandroid/os/Handler;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
