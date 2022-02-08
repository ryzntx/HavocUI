.class Lcom/havoc/support/preferences/MasterSwitchPreference$1;
.super Ljava/lang/Object;
.source "MasterSwitchPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/preferences/MasterSwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/MasterSwitchPreference;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 80
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$000(Lcom/havoc/support/preferences/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$000(Lcom/havoc/support/preferences/MasterSwitchPreference;)Landroid/widget/Switch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Switch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$100(Lcom/havoc/support/preferences/MasterSwitchPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/havoc/support/preferences/MasterSwitchPreference;->setChecked(Z)V

    .line 84
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$100(Lcom/havoc/support/preferences/MasterSwitchPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 85
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$100(Lcom/havoc/support/preferences/MasterSwitchPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/havoc/support/preferences/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object p1, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p1}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$100(Lcom/havoc/support/preferences/MasterSwitchPreference;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/havoc/support/preferences/MasterSwitchPreference;->persistBoolean(Z)Z

    .line 89
    :goto_0
    iget-object p0, p0, Lcom/havoc/support/preferences/MasterSwitchPreference$1;->this$0:Lcom/havoc/support/preferences/MasterSwitchPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/MasterSwitchPreference;->access$200(Lcom/havoc/support/preferences/MasterSwitchPreference;)Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/havoc/support/util/VibrationUtils;->doHapticFeedback(Landroid/content/Context;I)V

    return-void
.end method
