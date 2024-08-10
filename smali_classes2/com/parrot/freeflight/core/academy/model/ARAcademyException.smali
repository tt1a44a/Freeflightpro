.class public Lcom/parrot/freeflight/core/academy/model/ARAcademyException;
.super Ljava/lang/Exception;
.source "ARAcademyException.java"


# instance fields
.field private error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 9
    sget-object v0, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->ARACADEMY_ERROR:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 10
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 17
    invoke-static {p1}, Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;->getFromValue(I)Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 18
    return-void
.end method

.method public constructor <init>(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 14
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    return-object v0
.end method

.method public setError(Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/parrot/freeflight/core/academy/model/ARAcademyException;->error:Lcom/parrot/freeflight/core/academy/model/ARACADEMY_ERROR_ENUM;

    .line 26
    return-void
.end method
