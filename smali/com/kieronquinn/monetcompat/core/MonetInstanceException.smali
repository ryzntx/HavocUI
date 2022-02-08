.class public final Lcom/kieronquinn/monetcompat/core/MonetInstanceException;
.super Ljava/lang/NullPointerException;
.source "MonetExceptions.kt"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "Cannot access MonetCompat instance before calling create"

    .line 4
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    return-void
.end method
