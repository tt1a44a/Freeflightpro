.class Lcom/bumptech/glide/request/RequestFutureTarget$Waiter;
.super Ljava/lang/Object;
.source "RequestFutureTarget.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/RequestFutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Waiter"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method notifyAll(Ljava/lang/Object;)V
    .locals 0
    .param p1, "toNotify"    # Ljava/lang/Object;

    .prologue
    .line 281
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 282
    return-void
.end method

.method waitForTimeout(Ljava/lang/Object;J)V
    .locals 0
    .param p1, "toWaitOn"    # Ljava/lang/Object;
    .param p2, "timeoutMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-virtual {p1, p2, p3}, Ljava/lang/Object;->wait(J)V

    .line 278
    return-void
.end method
