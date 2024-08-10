.class public Lcom/parrot/jnicore/mppblackbox/MppBlackBoxManagerException;
.super Ljava/lang/Exception;
.source "MppBlackBoxManagerException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 9
    return-void
.end method
