.class public final Lcom/google/android/gms/maps/model/CircleOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "CircleOptionsCreator"
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
            "Lcom/google/android/gms/maps/model/CircleOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fillColor:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFillColor"
        id = 0x6
    .end annotation
.end field

.field private strokeColor:I
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokeColor"
        id = 0x5
    .end annotation
.end field

.field private zzcp:Lcom/google/android/gms/maps/model/LatLng;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCenter"
        id = 0x2
    .end annotation
.end field

.field private zzcq:D
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getRadius"
        id = 0x3
    .end annotation
.end field

.field private zzcr:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokeWidth"
        id = 0x4
    .end annotation
.end field

.field private zzcs:F
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getZIndex"
        id = 0x7
    .end annotation
.end field

.field private zzct:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isVisible"
        id = 0x8
    .end annotation
.end field

.field private zzcu:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isClickable"
        id = 0x9
    .end annotation
.end field

.field private zzcv:Ljava/util/List;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getStrokePattern"
        id = 0xa
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/google/android/gms/maps/model/zzc;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/zzc;-><init>()V

    sput-object v0, Lcom/google/android/gms/maps/model/CircleOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    .line 4
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    .line 5
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    .line 6
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 9
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 10
    iput-object v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    .line 11
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/maps/model/LatLng;DFIIFZZLjava/util/List;)V
    .locals 4
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p2    # D
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # I
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # F
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/model/LatLng;",
            "DFIIFZZ",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 13
    iput-object v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    .line 14
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    .line 15
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    .line 16
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    .line 17
    iput v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 20
    iput-boolean v2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 21
    iput-object v3, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    .line 23
    iput-wide p2, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    .line 24
    iput p4, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    .line 25
    iput p5, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    .line 26
    iput p6, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    .line 27
    iput p7, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    .line 28
    iput-boolean p8, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 29
    iput-boolean p9, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 30
    iput-object p10, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    .line 31
    return-void
.end method


# virtual methods
.method public final center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    .line 64
    return-object p0
.end method

.method public final clickable(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    .line 80
    return-object p0
.end method

.method public final fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 73
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    .line 74
    return-object p0
.end method

.method public final getCenter()Lcom/google/android/gms/maps/model/LatLng;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcp:Lcom/google/android/gms/maps/model/LatLng;

    return-object v0
.end method

.method public final getFillColor()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor:I

    return v0
.end method

.method public final getRadius()D
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    return-wide v0
.end method

.method public final getStrokeColor()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    return v0
.end method

.method public final getStrokePattern()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    return-object v0
.end method

.method public final getStrokeWidth()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    return v0
.end method

.method public final getZIndex()F
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    return v0
.end method

.method public final isClickable()Z
    .locals 1

    .prologue
    .line 89
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcu:Z

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    return v0
.end method

.method public final radius(D)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 1

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcq:D

    .line 66
    return-object p0
.end method

.method public final strokeColor(I)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->strokeColor:I

    .line 70
    return-object p0
.end method

.method public final strokePattern(Ljava/util/List;)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/PatternItem;",
            ">;)",
            "Lcom/google/android/gms/maps/model/CircleOptions;"
        }
    .end annotation

    .prologue
    .line 71
    iput-object p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcv:Ljava/util/List;

    .line 72
    return-object p0
.end method

.method public final strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 67
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcr:F

    .line 68
    return-object p0
.end method

.method public final visible(Z)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzct:Z

    .line 78
    return-object p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 32
    .line 33
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    move-result v0

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v2

    .line 36
    invoke-static {p1, v1, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 37
    const/4 v1, 0x3

    .line 38
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getRadius()D

    move-result-wide v2

    .line 39
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 40
    const/4 v1, 0x4

    .line 41
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokeWidth()F

    move-result v2

    .line 42
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 43
    const/4 v1, 0x5

    .line 44
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokeColor()I

    move-result v2

    .line 45
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 46
    const/4 v1, 0x6

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getFillColor()I

    move-result v2

    .line 48
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 49
    const/4 v1, 0x7

    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getZIndex()F

    move-result v2

    .line 51
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeFloat(Landroid/os/Parcel;IF)V

    .line 52
    const/16 v1, 0x8

    .line 53
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->isVisible()Z

    move-result v2

    .line 54
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 55
    const/16 v1, 0x9

    .line 56
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->isClickable()Z

    move-result v2

    .line 57
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 58
    const/16 v1, 0xa

    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/CircleOptions;->getStrokePattern()Ljava/util/List;

    move-result-object v2

    .line 60
    invoke-static {p1, v1, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 61
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 62
    return-void
.end method

.method public final zIndex(F)Lcom/google/android/gms/maps/model/CircleOptions;
    .locals 0

    .prologue
    .line 75
    iput p1, p0, Lcom/google/android/gms/maps/model/CircleOptions;->zzcs:F

    .line 76
    return-object p0
.end method
