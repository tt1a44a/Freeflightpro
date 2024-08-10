.class public Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;
.super Ljava/lang/Object;
.source "RcChannelInfo.java"


# instance fields
.field private mAction:I

.field private mCalibrated:Z

.field private mCalibratedChannelType:I

.field private mInverted:Z

.field private mRequired:Z

.field private mSupportedChannelTypes:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mValue:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "action"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mSupportedChannelTypes:Ljava/util/List;

    .line 24
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mAction:I

    .line 25
    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mAction:I

    return v0
.end method

.method public getCalibratedChannelType()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mCalibratedChannelType:I

    return v0
.end method

.method public getSupportedChannelTypes()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mSupportedChannelTypes:Ljava/util/List;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mValue:I

    return v0
.end method

.method public isCalibrated()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mCalibrated:Z

    return v0
.end method

.method public isInverted()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mInverted:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mRequired:Z

    return v0
.end method

.method public setCalibrated(Z)V
    .locals 0
    .param p1, "calibrated"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mCalibrated:Z

    .line 46
    return-void
.end method

.method public setCalibratedChannelType(I)V
    .locals 0
    .param p1, "calibratedChannelType"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mCalibratedChannelType:I

    .line 77
    return-void
.end method

.method public setInverted(Z)V
    .locals 0
    .param p1, "inverted"    # Z

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mInverted:Z

    .line 85
    return-void
.end method

.method public setRequired(Z)V
    .locals 0
    .param p1, "required"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mRequired:Z

    .line 38
    return-void
.end method

.method public setSupportedChannelTypes(I)V
    .locals 6
    .param p1, "supportedChannelTypes"    # I

    .prologue
    .line 62
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mSupportedChannelTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 63
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 64
    .local v0, "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;->getValue()I

    move-result v4

    shr-int v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 65
    iget-object v4, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mSupportedChannelTypes:Ljava/util/List;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/rccontroller/RcControllerModel;->getChannelType(Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "channelTypeEnum":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_RC_CHANNEL_TYPE_ENUM;
    :cond_1
    return-void
.end method

.method public setValue(I)V
    .locals 0
    .param p1, "value"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/parrot/freeflight/piloting/model/rccontroller/RcChannelInfo;->mValue:I

    .line 54
    return-void
.end method
