.class public final Lcom/google/android/gms/maps/zzai;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/google/android/gms/maps/StreetViewPanoramaOptions;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 13

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 6
    .line 7
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result v11

    move v8, v9

    move v7, v9

    move v6, v9

    move v5, v9

    move-object v4, v10

    move-object v3, v10

    move-object v2, v10

    move-object v1, v10

    .line 18
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    if-ge v0, v11, :cond_0

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 20
    invoke-static {v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 51
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 21
    :pswitch_0
    sget-object v1, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 22
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-object v1, v0

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createString(Landroid/os/Parcel;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 27
    :pswitch_2
    sget-object v3, Lcom/google/android/gms/maps/model/LatLng;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 28
    invoke-static {p1, v0, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/LatLng;

    move-object v3, v0

    .line 29
    goto :goto_0

    .line 31
    :pswitch_3
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIntegerObject(Landroid/os/Parcel;I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_0

    .line 34
    :pswitch_4
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readByte(Landroid/os/Parcel;I)B

    move-result v5

    goto :goto_0

    .line 37
    :pswitch_5
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readByte(Landroid/os/Parcel;I)B

    move-result v6

    goto :goto_0

    .line 40
    :pswitch_6
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readByte(Landroid/os/Parcel;I)B

    move-result v7

    goto :goto_0

    .line 43
    :pswitch_7
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readByte(Landroid/os/Parcel;I)B

    move-result v8

    goto :goto_0

    .line 46
    :pswitch_8
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readByte(Landroid/os/Parcel;I)B

    move-result v9

    goto :goto_0

    .line 48
    :pswitch_9
    sget-object v10, Lcom/google/android/gms/maps/model/StreetViewSource;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 49
    invoke-static {p1, v0, v10}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/StreetViewSource;

    move-object v10, v0

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {p1, v11}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    .line 54
    new-instance v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    invoke-direct/range {v0 .. v10}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;-><init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBBLcom/google/android/gms/maps/model/StreetViewSource;)V

    .line 55
    return-object v0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3
    .line 4
    new-array v0, p1, [Lcom/google/android/gms/maps/StreetViewPanoramaOptions;

    .line 5
    return-object v0
.end method
