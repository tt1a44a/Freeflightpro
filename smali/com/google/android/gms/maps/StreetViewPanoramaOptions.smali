.class public final Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "StreetViewPanoramaOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/maps/StreetViewPanoramaOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private panoId:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPanoramaId"
        id = 0x3
    .end annotation
.end field

.field private position:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPosition"
        id = 0x4
    .end annotation
.end field

.field private zzak:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUseViewLifecycleInFragmentForParcel"
        id = 0xa
        type = "byte"
    .end annotation
.end field

.field private zzap:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getZoomGesturesEnabledForParcel"
        id = 0x7
        type = "byte"
    .end annotation
.end field

.field private zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStreetViewPanoramaCamera"
        id = 0x2
    .end annotation
.end field

.field private zzby:Ljava/lang/Integer;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRadius"
        id = 0x5
    .end annotation
.end field

.field private zzbz:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUserNavigationEnabledForParcel"
        id = 0x6
        type = "byte"
    .end annotation
.end field

.field private zzca:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPanningGesturesEnabledForParcel"
        id = 0x8
        type = "byte"
    .end annotation
.end field

.field private zzcb:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStreetNamesEnabledForParcel"
        id = 0x9
        type = "byte"
    .end annotation
.end field

.field private zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSource"
        id = 0xb
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/google/android/gms/maps/zzai;

    invoke-direct {v0}, Lcom/google/android/gms/maps/zzai;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 56
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 58
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 60
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 62
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 64
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 65
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->DEFAULT:Lcom/google/android/gms/maps/model/StreetViewSource;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 66
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;Ljava/lang/String;Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;BBBBBLcom/google/android/gms/maps/model/StreetViewSource;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p5    # B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p6    # B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p7    # B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p8    # B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p9    # B
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p10    # Lcom/google/android/gms/maps/model/StreetViewSource;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 7
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 10
    sget-object v0, Lcom/google/android/gms/maps/model/StreetViewSource;->DEFAULT:Lcom/google/android/gms/maps/model/StreetViewSource;

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 11
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    .line 12
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 13
    iput-object p4, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    .line 14
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    .line 15
    invoke-static {p5}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 16
    invoke-static {p6}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 17
    invoke-static {p7}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 18
    invoke-static {p8}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 19
    invoke-static {p9}, Lcom/google/android/gms/maps/internal/zza;->zza(B)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    .line 20
    iput-object p10, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 21
    return-void
.end method


# virtual methods
.method public final getPanningGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getPanoramaId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPosition()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getRadius()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getSource()Lcom/google/android/gms/maps/model/StreetViewSource;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    return-object v0
.end method

.method public final getStreetNamesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getStreetViewPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    return-object v0
.end method

.method public final getUseViewLifecycleInFragment()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getUserNavigationEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getZoomGesturesEnabled()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final panningGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    .prologue
    .line 87
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 88
    return-object p0
.end method

.method public final panoramaCamera(Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    .line 68
    return-object p0
.end method

.method public final panoramaId(Ljava/lang/String;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .prologue
    .line 69
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    .line 70
    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 72
    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/StreetViewSource;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 81
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 82
    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 74
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    .line 75
    return-object p0
.end method

.method public final position(Lcom/google/android/gms/maps/model/LatLng;Ljava/lang/Integer;Lcom/google/android/gms/maps/model/StreetViewSource;)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 77
    iput-object p2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    .line 78
    iput-object p3, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 79
    return-object p0
.end method

.method public final streetNamesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    .prologue
    .line 89
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 90
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    invoke-static {p0}, Lcom/google/android/gms/common/internal/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "PanoramaId"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->panoId:Ljava/lang/String;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Position"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->position:Lcom/google/android/gms/maps/model/LatLng;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Radius"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzby:Ljava/lang/Integer;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "Source"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcc:Lcom/google/android/gms/maps/model/StreetViewSource;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "StreetViewPanoramaCamera"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbx:Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    .line 108
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "UserNavigationEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "ZoomGesturesEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "PanningGesturesEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "StreetNamesEnabled"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    const-string v1, "UseViewLifecycleInFragment"

    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/Objects$ToStringHelper;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/Objects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    .line 115
    return-object v0
.end method

.method public final useViewLifecycleInFragment(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    .prologue
    .line 91
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    .line 92
    return-object p0
.end method

.method public final userNavigationEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    .prologue
    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    .line 84
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 22
    .line 23
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 24
    const/4 v1, 0x2

    .line 25
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getStreetViewPanoramaCamera()Lcom/google/android/gms/maps/model/StreetViewPanoramaCamera;

    move-result-object v2

    .line 26
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getPanoramaId()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 30
    const/4 v1, 0x4

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 32
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 33
    const/4 v1, 0x5

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getRadius()Ljava/lang/Integer;

    move-result-object v2

    .line 35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    .line 36
    const/4 v1, 0x6

    .line 37
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzbz:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/internal/zza;->zza(Ljava/lang/Boolean;)B

    move-result v2

    .line 38
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    .line 39
    const/4 v1, 0x7

    .line 40
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/internal/zza;->zza(Ljava/lang/Boolean;)B

    move-result v2

    .line 41
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    .line 42
    const/16 v1, 0x8

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzca:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/internal/zza;->zza(Ljava/lang/Boolean;)B

    move-result v2

    .line 44
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    .line 45
    const/16 v1, 0x9

    .line 46
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzcb:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/internal/zza;->zza(Ljava/lang/Boolean;)B

    move-result v2

    .line 47
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    .line 48
    const/16 v1, 0xa

    .line 49
    iget-object v2, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzak:Ljava/lang/Boolean;

    invoke-static {v2}, Lcom/google/android/gms/maps/internal/zza;->zza(Ljava/lang/Boolean;)B

    move-result v2

    .line 50
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByte(Landroid/os/Parcel;IB)V

    .line 51
    const/16 v1, 0xb

    .line 52
    invoke-virtual {p0}, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->getSource()Lcom/google/android/gms/maps/model/StreetViewSource;

    move-result-object v2

    .line 53
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 54
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 55
    return-void
.end method

.method public final zoomGesturesEnabled(Z)Lcom/google/android/gms/maps/StreetViewPanoramaOptions;
    .locals 1

    .prologue
    .line 85
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/maps/StreetViewPanoramaOptions;->zzap:Ljava/lang/Boolean;

    .line 86
    return-object p0
.end method
