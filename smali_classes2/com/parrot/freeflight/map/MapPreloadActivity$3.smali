.class Lcom/parrot/freeflight/map/MapPreloadActivity$3;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/map/PreloadMapManager$SearchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/map/MapPreloadActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/map/MapPreloadActivity;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSearching()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1000(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    .line 115
    return-void
.end method

.method public searchFinished(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 3
    .param p1, "result"    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 119
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1100(Lcom/parrot/freeflight/map/MapPreloadActivity;)V

    .line 120
    if-nez p1, :cond_0

    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1200(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f1104c5

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/Snackbar;->make(Landroid/view/View;II)Landroid/support/design/widget/Snackbar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/design/widget/Snackbar;->show()V

    .line 127
    :goto_0
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1300(Lcom/parrot/freeflight/map/MapPreloadActivity;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0, v2}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1400(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)V

    .line 125
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$3;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1500(Lcom/parrot/freeflight/map/MapPreloadActivity;)Lcom/parrot/freeflight/map/PreloadMapManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/parrot/freeflight/map/PreloadMapManager;->centerOnLocation(Lcom/google/android/gms/maps/model/LatLng;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
