.class Lcom/android/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateMachine"
.end annotation


# instance fields
.field private state:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardSimPukView;


# direct methods
.method private constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 102
    iput p1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/KeyguardSimPukView;Lcom/android/keyguard/KeyguardSimPukView$1;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .locals 3

    .line 106
    iget v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$300(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 109
    sget v0, Lcom/android/systemui/R$string;->kg_puk_enter_pin_hint:I

    goto :goto_0

    .line 111
    :cond_0
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_puk_hint:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v1, :cond_3

    .line 114
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSimPukView;->access$400(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    iput v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 116
    sget v0, Lcom/android/systemui/R$string;->kg_enter_confirm_pin_hint:I

    goto :goto_0

    .line 118
    :cond_2
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_sim_pin_hint:I

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_5

    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 122
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 123
    sget v0, Lcom/android/systemui/R$string;->keyguard_sim_unlock_progress_dialog_message:I

    .line 124
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$500(Lcom/android/keyguard/KeyguardSimPukView;)V

    goto :goto_0

    .line 126
    :cond_4
    iput v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 127
    sget v0, Lcom/android/systemui/R$string;->kg_invalid_confirm_pin_hint:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    .line 130
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-virtual {v2, v1, v1}, Lcom/android/keyguard/KeyguardPinBasedInputView;->resetPasswordText(ZZ)V

    if-eqz v0, :cond_6

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/keyguard/SecurityMessageDisplay;

    invoke-interface {p0, v0}, Lcom/android/keyguard/SecurityMessageDisplay;->setMessage(I)V

    :cond_6
    return-void
.end method

.method reset()V
    .locals 4

    .line 138
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$602(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$702(Lcom/android/keyguard/KeyguardSimPukView;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    .line 140
    iput v0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 141
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$800(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 142
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$200(Lcom/android/keyguard/KeyguardSimPukView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$900(Lcom/android/keyguard/KeyguardSimPukView;)V

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSimPukView;->access$1000(Lcom/android/keyguard/KeyguardSimPukView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSimPukView;->access$1100(Lcom/android/keyguard/KeyguardSimPukView;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardEsimArea;->isEsimLocked(Landroid/content/Context;I)Z

    move-result v1

    .line 147
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_esim_area:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardEsimArea;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 148
    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/keyguard/KeyguardSimPukView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardPinBasedInputView;->mPasswordEntry:Lcom/android/keyguard/PasswordTextView;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
