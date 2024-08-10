.class Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$3;
.super Ljava/lang/Object;
.source "MyFlightsDetailsGpsFragment.java"

# interfaces
.implements Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->shareMap()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$3;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSnapshotReady(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 445
    iget-object v0, p0, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment$3;->this$0:Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;

    invoke-virtual {v0}, Lcom/parrot/freeflight/academy/fragments/MyFlightsDetailsGpsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f11068e

    invoke-static {v0, v1, p1}, Lcom/parrot/freeflight/media/MediaSharingHelper;->shareBitmap(Landroid/content/Context;ILandroid/graphics/Bitmap;)V

    .line 446
    return-void
.end method
