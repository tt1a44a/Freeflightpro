.class public Lcom/muvee/dsg/mmap/api/transition/MvTransition;
.super Ljava/lang/Object;
.source "MvTransition.java"


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/transition/MvTransition;->nativeInit(I)I

    .line 13
    return-void
.end method


# virtual methods
.method public isTransitionPossible([Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/muvee/dsg/mmap/api/transition/MvTransition;->nativeIsTPossible([Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    .line 19
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public native nativeInit(I)I
.end method

.method public native nativeIsTPossible([Ljava/lang/String;)I
.end method
