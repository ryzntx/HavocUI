.class public final synthetic Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CBfotJvJ14bF--iDP-kBSRu1Gnk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CBfotJvJ14bF--iDP-kBSRu1Gnk;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iput-boolean p2, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CBfotJvJ14bF--iDP-kBSRu1Gnk;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CBfotJvJ14bF--iDP-kBSRu1Gnk;->f$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/-$$Lambda$GlobalActionsDialog$CBfotJvJ14bF--iDP-kBSRu1Gnk;->f$1:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->lambda$rebootAction$3$GlobalActionsDialog(Z)V

    return-void
.end method
