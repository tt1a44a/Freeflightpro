.class public Lcom/parrot/arsdk/armavlink/ARMavlinkException;
.super Ljava/lang/Exception;
.source "ARMavlinkException.java"


# instance fields
.field private error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 45
    sget-object v0, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->ARMAVLINK_ERROR:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    iput-object v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->getFromValue(I)Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    move-result-object v0

    iput-object v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 66
    return-void
.end method

.method public constructor <init>(Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 56
    return-void
.end method


# virtual methods
.method public getError()Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    return-object v0
.end method

.method public setError(Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;)V
    .locals 0
    .param p1, "error"    # Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 95
    iget-object v1, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    if-eqz v1, :cond_0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ARMavlinkException ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/parrot/arsdk/armavlink/ARMavlinkException;->error:Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;

    invoke-virtual {v2}, Lcom/parrot/arsdk/armavlink/ARMAVLINK_ERROR_ENUM;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 101
    .end local v0    # "str":Ljava/lang/String;
    :cond_0
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0
.end method
