.class Lcom/havoc/support/preferences/ColorBlendPreference$9;
.super Ljava/lang/Object;
.source "ColorBlendPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


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

    .line 354
    iput-object p1, p0, Lcom/havoc/support/preferences/ColorBlendPreference$9;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/havoc/support/preferences/ColorBlendPreference$9;->this$0:Lcom/havoc/support/preferences/ColorBlendPreference;

    invoke-static {p0}, Lcom/havoc/support/preferences/ColorBlendPreference;->access$1600(Lcom/havoc/support/preferences/ColorBlendPreference;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
