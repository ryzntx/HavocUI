.class public final Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MonetCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kieronquinn/monetcompat/core/MonetCompat;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;


# direct methods
.method constructor <init>(Lcom/kieronquinn/monetcompat/core/MonetCompat;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 152
    iget-object p0, p0, Lcom/kieronquinn/monetcompat/core/MonetCompat$wallpaperChangedReceiver$1;->this$0:Lcom/kieronquinn/monetcompat/core/MonetCompat;

    const/4 p1, 0x0

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/kieronquinn/monetcompat/core/MonetCompat;->updateMonetColorsInternal$default(Lcom/kieronquinn/monetcompat/core/MonetCompat;ZILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method
