.class public Lcom/parrot/jnicore/mppblackbox/PilotingInfo;
.super Ljava/lang/Object;
.source "PilotingInfo.java"


# instance fields
.field private mGaz:B

.field private mPitch:B

.field private mRoll:B

.field private mSource:B

.field private mYaw:B


# direct methods
.method public constructor <init>(BBBBB)V
    .locals 0
    .param p1, "pitch"    # B
    .param p2, "roll"    # B
    .param p3, "yaw"    # B
    .param p4, "gaz"    # B
    .param p5, "source"    # B

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-byte p1, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mPitch:B

    .line 13
    iput-byte p2, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mRoll:B

    .line 14
    iput-byte p3, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mYaw:B

    .line 15
    iput-byte p4, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mGaz:B

    .line 16
    iput-byte p5, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mSource:B

    .line 17
    return-void
.end method


# virtual methods
.method public getGaz()B
    .locals 1

    .prologue
    .line 32
    iget-byte v0, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mGaz:B

    return v0
.end method

.method public getPitch()B
    .locals 1

    .prologue
    .line 20
    iget-byte v0, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mPitch:B

    return v0
.end method

.method public getRoll()B
    .locals 1

    .prologue
    .line 24
    iget-byte v0, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mRoll:B

    return v0
.end method

.method public getSource()B
    .locals 1

    .prologue
    .line 36
    iget-byte v0, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mSource:B

    return v0
.end method

.method public getYaw()B
    .locals 1

    .prologue
    .line 28
    iget-byte v0, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mYaw:B

    return v0
.end method

.method public setGaz(B)V
    .locals 0
    .param p1, "gaz"    # B

    .prologue
    .line 52
    iput-byte p1, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mGaz:B

    .line 53
    return-void
.end method

.method public setPitch(B)V
    .locals 0
    .param p1, "pitch"    # B

    .prologue
    .line 40
    iput-byte p1, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mPitch:B

    .line 41
    return-void
.end method

.method public setRoll(B)V
    .locals 0
    .param p1, "roll"    # B

    .prologue
    .line 44
    iput-byte p1, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mRoll:B

    .line 45
    return-void
.end method

.method public setSource(B)V
    .locals 0
    .param p1, "source"    # B

    .prologue
    .line 56
    iput-byte p1, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mSource:B

    .line 57
    return-void
.end method

.method public setYaw(B)V
    .locals 0
    .param p1, "yaw"    # B

    .prologue
    .line 48
    iput-byte p1, p0, Lcom/parrot/jnicore/mppblackbox/PilotingInfo;->mYaw:B

    .line 49
    return-void
.end method
