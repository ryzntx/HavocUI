.class public final synthetic Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tuK3db_PKF7Z0p3Tp2hFfoHgKRU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/recents/OverviewProxyService$1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tuK3db_PKF7Z0p3Tp2hFfoHgKRU;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iput p2, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tuK3db_PKF7Z0p3Tp2hFfoHgKRU;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tuK3db_PKF7Z0p3Tp2hFfoHgKRU;->f$0:Lcom/android/systemui/recents/OverviewProxyService$1;

    iget p0, p0, Lcom/android/systemui/recents/-$$Lambda$OverviewProxyService$1$tuK3db_PKF7Z0p3Tp2hFfoHgKRU;->f$1:I

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/OverviewProxyService$1;->lambda$onQuickSwitchToNewTask$11$OverviewProxyService$1(I)V

    return-void
.end method
