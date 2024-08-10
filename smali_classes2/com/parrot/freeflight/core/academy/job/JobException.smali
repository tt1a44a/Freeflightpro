.class public Lcom/parrot/freeflight/core/academy/job/JobException;
.super Ljava/lang/Exception;
.source "JobException.java"


# instance fields
.field private final mShouldDismiss:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "detailMessage"    # Ljava/lang/String;
    .param p2, "shouldDismiss"    # Z

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    iput-boolean p2, p0, Lcom/parrot/freeflight/core/academy/job/JobException;->mShouldDismiss:Z

    .line 10
    return-void
.end method


# virtual methods
.method public shouldDismiss()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/parrot/freeflight/core/academy/job/JobException;->mShouldDismiss:Z

    return v0
.end method
