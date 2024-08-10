.class public Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
.super Ljava/lang/Object;
.source "DroneConnectionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/wifi/DroneConnectionInfo$State;,
        Lcom/parrot/freeflight/wifi/DroneConnectionInfo$Security;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/parrot/freeflight/wifi/DroneConnectionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NONE:I = 0x0

.field public static final STATE_AUTHENTICATION_FAILED:I = -0x2

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final UNKNOWN:I = -0x1

.field public static final WPA2:I = 0x1


# instance fields
.field protected mActive:Z

.field protected final mName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected final mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

.field protected mSaved:Z

.field protected mSecured:Z

.field protected mSignalLevel:I

.field protected mState:I

.field protected final mUid:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 212
    new-instance v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/wifi/DroneConnectionInfo$1;-><init>()V

    sput-object v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v4, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput v4, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSaved:Z

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mActive:Z

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_3

    :goto_3
    iput-boolean v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mVisible:Z

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 209
    .local v0, "tmpMProduct":I
    if-ne v0, v4, :cond_4

    const/4 v1, 0x0

    :goto_4
    iput-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 210
    return-void

    .end local v0    # "tmpMProduct":I
    :cond_0
    move v1, v3

    .line 203
    goto :goto_0

    :cond_1
    move v1, v3

    .line 205
    goto :goto_1

    :cond_2
    move v1, v3

    .line 206
    goto :goto_2

    :cond_3
    move v2, v3

    .line 207
    goto :goto_3

    .line 209
    .restart local v0    # "tmpMProduct":I
    :cond_4
    invoke-static {}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->values()[Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_4
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;IZIZZ)V
    .locals 2
    .param p1, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "product"    # Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "security"    # I
    .param p5, "saved"    # Z
    .param p6, "rssi"    # I
    .param p7, "active"    # Z
    .param p8, "visible"    # Z

    .prologue
    const/4 v0, 0x1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v1, -0x1

    iput v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    .line 65
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    .line 67
    if-ne p4, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    .line 68
    iput p6, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    .line 69
    iput-object p3, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 70
    iput-boolean p5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSaved:Z

    .line 71
    iput-boolean p7, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mActive:Z

    .line 72
    iput-boolean p8, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mVisible:Z

    .line 73
    return-void

    .line 67
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZIZZ)V
    .locals 1
    .param p1, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "secured"    # Z
    .param p4, "saved"    # Z
    .param p5, "rssi"    # I
    .param p6, "active"    # Z
    .param p7, "visible"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    .line 55
    iput-boolean p3, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    .line 56
    iput p5, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    .line 57
    sget-object v0, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->eARDISCOVERY_PRODUCT_UNKNOWN_ENUM_VALUE:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    iput-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    .line 58
    iput-boolean p4, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSaved:Z

    .line 59
    iput-boolean p6, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mActive:Z

    .line 60
    iput-boolean p7, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mVisible:Z

    .line 61
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 183
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 162
    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    .line 169
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 165
    check-cast v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;

    .line 167
    .local v0, "that":Lcom/parrot/freeflight/wifi/DroneConnectionInfo;
    iget-boolean v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    iget-boolean v3, v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    if-ne v2, v3, :cond_0

    .line 168
    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    iget-object v3, v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    iget-object v2, v0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    return-object v0
.end method

.method public getRssi()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    return v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public getSignalLevel()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 175
    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 176
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 177
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 178
    return v0

    .line 177
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActive()Z
    .locals 1

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mActive:Z

    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 126
    iget v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSaved()Z
    .locals 1

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSaved:Z

    return v0
.end method

.method public isSecured()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mVisible:Z

    return v0
.end method

.method public setActive(Z)V
    .locals 0
    .param p1, "active"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mActive:Z

    .line 135
    return-void
.end method

.method public setRssi(I)V
    .locals 0
    .param p1, "rssi"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    .line 115
    return-void
.end method

.method public setSaved(Z)V
    .locals 0
    .param p1, "saved"    # Z

    .prologue
    .line 122
    iput-boolean p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSaved:Z

    .line 123
    return-void
.end method

.method public setSignalLevel(I)V
    .locals 0
    .param p1, "signalLevel"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    .line 98
    return-void
.end method

.method public setState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    .line 157
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mVisible:Z

    .line 143
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSerial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nmRssi: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mUid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSignalLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSecured:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 192
    iget v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mSaved:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 194
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mActive:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 195
    iget-boolean v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mVisible:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 196
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    if-nez v0, :cond_4

    const/4 v0, -0x1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    return-void

    :cond_0
    move v0, v2

    .line 191
    goto :goto_0

    :cond_1
    move v0, v2

    .line 193
    goto :goto_1

    :cond_2
    move v0, v2

    .line 194
    goto :goto_2

    :cond_3
    move v1, v2

    .line 195
    goto :goto_3

    .line 196
    :cond_4
    iget-object v0, p0, Lcom/parrot/freeflight/wifi/DroneConnectionInfo;->mProduct:Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;

    invoke-virtual {v0}, Lcom/parrot/arsdk/ardiscovery/ARDISCOVERY_PRODUCT_ENUM;->ordinal()I

    move-result v0

    goto :goto_4
.end method
