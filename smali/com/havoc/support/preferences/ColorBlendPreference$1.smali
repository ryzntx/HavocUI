.class Lcom/havoc/support/preferences/ColorBlendPreference$1;
.super Ljava/lang/Object;
.source "ColorBlendPreference.java"

# interfaces
.implements Lcom/havoc/support/colorpicker/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/havoc/support/preferences/ColorBlendPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/havoc/support/preferences/ColorBlendPreference;


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/ColorBlendPreference;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$1;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onColorChanged(I)V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$1;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {v0, p1}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$002(Lcom/havoc/support/preferences/ColorBlendPreference;I)I

    .line 152
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$1;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$100(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    return-void
.end method
