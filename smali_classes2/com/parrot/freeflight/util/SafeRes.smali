.class public Lcom/parrot/freeflight/util/SafeRes;
.super Ljava/lang/Object;
.source "SafeRes.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SafeRes"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs getQuantityString(Landroid/content/res/Resources;II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
        .annotation build Landroid/support/annotation/PluralsRes;
        .end annotation
    .end param
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 31
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/UnknownFormatConversionException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 38
    .local v1, "str":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 32
    .end local v1    # "str":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/util/UnknownFormatConversionException;
    const-string v2, "SafeRes"

    const-string v3, "getQuantityString failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    const-string v1, ""

    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method
