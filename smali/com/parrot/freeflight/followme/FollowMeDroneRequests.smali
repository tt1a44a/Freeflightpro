.class public Lcom/parrot/freeflight/followme/FollowMeDroneRequests;
.super Ljava/lang/Object;
.source "FollowMeDroneRequests.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight/followme/FollowMeDroneRequests$RequestType;
    }
.end annotation


# static fields
.field public static final CALIBRATION_NEEDED:I = 0x1

.field public static final DRONE_FURTHER_NEEDED:I = 0x5

.field public static final DRONE_HIGHER_NEEDED:I = 0x6

.field public static final GOOD_DRONE_GPS_ACCURACY_NEEDED:I = 0x2

.field public static final GOOD_TARGET_GPS_ACCURACY_NEEDED:I = 0x3

.field public static final IMAGE_DETECTION_NEEDED:I = 0x7

.field public static final NONE:I = 0x0

.field public static final TARGET_BAROMETER_NEEDED:I = 0x4


# instance fields
.field private final mFollowMeGeoRequests:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private final mFollowMeRelativeRequests:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field

.field private final mLookAtMeRequests:Landroid/util/SparseArray;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;->values()[Lcom/parrot/arsdk/arcommands/ARCOMMANDS_FOLLOW_ME_INPUT_ENUM;

    move-result-object v1

    array-length v0, v1

    .line 43
    .local v0, "followMeInputSize":I
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->mLookAtMeRequests:Landroid/util/SparseArray;

    .line 44
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->mFollowMeGeoRequests:Landroid/util/SparseArray;

    .line 45
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->mFollowMeRelativeRequests:Landroid/util/SparseArray;

    .line 46
    return-void
.end method

.method private getRequestsFromMode(I)Landroid/util/SparseArray;
    .locals 1
    .param p1, "mode"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    packed-switch p1, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 72
    :pswitch_0
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->mLookAtMeRequests:Landroid/util/SparseArray;

    goto :goto_0

    .line 74
    :pswitch_1
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->mFollowMeGeoRequests:Landroid/util/SparseArray;

    goto :goto_0

    .line 76
    :pswitch_2
    iget-object v0, p0, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->mFollowMeRelativeRequests:Landroid/util/SparseArray;

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addFollowMeRequest(IIII)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "type"    # I
    .param p3, "message"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p4, "criticalityLevel"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->getRequestsFromMode(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 51
    .local v1, "requestList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    if-eqz v1, :cond_0

    .line 52
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/alert/Alert;

    .line 53
    .local v0, "curValue":Lcom/parrot/freeflight/piloting/alert/Alert;
    if-nez v0, :cond_1

    .line 54
    new-instance v2, Lcom/parrot/freeflight/piloting/alert/Alert;

    invoke-direct {v2, p2, p3, p4}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    .end local v0    # "curValue":Lcom/parrot/freeflight/piloting/alert/Alert;
    :cond_0
    :goto_0
    return-void

    .line 56
    .restart local v0    # "curValue":Lcom/parrot/freeflight/piloting/alert/Alert;
    :cond_1
    invoke-virtual {v0, p2, p3, p4}, Lcom/parrot/freeflight/piloting/alert/Alert;->setInfo(III)Z

    goto :goto_0
.end method

.method public getFollowMeAlerts(I)Ljava/util/List;
    .locals 5
    .param p1, "mode"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/parrot/freeflight/piloting/alert/Alert;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v0, "followMeAlerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->getRequestsFromMode(I)Landroid/util/SparseArray;

    move-result-object v3

    .line 99
    .local v3, "requestList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    if-eqz v3, :cond_0

    .line 100
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "length":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 101
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    return-object v0
.end method

.method public varargs hasOneRequestType(I[I)Z
    .locals 6
    .param p1, "mode"    # I
    .param p2, "types"    # [I

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->getRequestsFromMode(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 85
    .local v0, "requestList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    if-eqz v0, :cond_0

    .line 86
    array-length v4, p2

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget v1, p2, v3

    .line 87
    .local v1, "type":I
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 88
    const/4 v2, 0x1

    .line 92
    .end local v1    # "type":I
    :cond_0
    return v2

    .line 86
    .restart local v1    # "type":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public removeFollowMeRequest(II)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "type"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/parrot/freeflight/followme/FollowMeDroneRequests;->getRequestsFromMode(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 63
    .local v0, "requestList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 66
    :cond_0
    return-void
.end method
