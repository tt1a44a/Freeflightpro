.class public final Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;
.super Ljava/lang/Object;
.source "BlackboxRecordEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MppPcmd"
.end annotation


# instance fields
.field private mGaz:B

.field private mPitch:B

.field private mRoll:B

.field private mSource:B

.field private mYaw:B


# direct methods
.method private constructor <init>(BBBBB)V
    .locals 0
    .param p1, "pitch"    # B
    .param p2, "roll"    # B
    .param p3, "yaw"    # B
    .param p4, "gaz"    # B
    .param p5, "source"    # B

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-byte p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mPitch:B

    .line 74
    iput-byte p2, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mRoll:B

    .line 75
    iput-byte p3, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mYaw:B

    .line 76
    iput-byte p4, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mGaz:B

    .line 77
    iput-byte p5, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mSource:B

    .line 78
    return-void
.end method

.method synthetic constructor <init>(BBBBBLcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$1;)V
    .locals 0
    .param p1, "x0"    # B
    .param p2, "x1"    # B
    .param p3, "x2"    # B
    .param p4, "x3"    # B
    .param p5, "x4"    # B
    .param p6, "x5"    # Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$1;

    .prologue
    .line 64
    invoke-direct/range {p0 .. p5}, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;-><init>(BBBBB)V

    return-void
.end method


# virtual methods
.method public getGaz()B
    .locals 1

    .prologue
    .line 93
    iget-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mGaz:B

    return v0
.end method

.method public getPitch()B
    .locals 1

    .prologue
    .line 81
    iget-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mPitch:B

    return v0
.end method

.method public getRoll()B
    .locals 1

    .prologue
    .line 85
    iget-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mRoll:B

    return v0
.end method

.method public getSource()B
    .locals 1

    .prologue
    .line 97
    iget-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mSource:B

    return v0
.end method

.method public getYaw()B
    .locals 1

    .prologue
    .line 89
    iget-byte v0, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mYaw:B

    return v0
.end method

.method public setGaz(B)V
    .locals 0
    .param p1, "gaz"    # B

    .prologue
    .line 113
    iput-byte p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mGaz:B

    .line 114
    return-void
.end method

.method public setPitch(B)V
    .locals 0
    .param p1, "pitch"    # B

    .prologue
    .line 101
    iput-byte p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mPitch:B

    .line 102
    return-void
.end method

.method public setRoll(B)V
    .locals 0
    .param p1, "roll"    # B

    .prologue
    .line 105
    iput-byte p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mRoll:B

    .line 106
    return-void
.end method

.method public setSource(B)V
    .locals 0
    .param p1, "source"    # B

    .prologue
    .line 117
    iput-byte p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mSource:B

    .line 118
    return-void
.end method

.method public setYaw(B)V
    .locals 0
    .param p1, "yaw"    # B

    .prologue
    .line 109
    iput-byte p1, p0, Lcom/parrot/freeflight/blackbox/recorder/BlackboxRecordEntry$MppPcmd;->mYaw:B

    .line 110
    return-void
.end method
