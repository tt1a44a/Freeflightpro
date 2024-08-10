.class Lcom/parrot/freeflight/map/MapPreloadActivity$6;
.super Ljava/lang/Object;
.source "MapPreloadActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/map/MapPreloadActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 185
    iput-object p1, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$6;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/parrot/freeflight/map/MapPreloadActivity$6;->this$0:Lcom/parrot/freeflight/map/MapPreloadActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/parrot/freeflight/map/MapPreloadActivity;->access$1400(Lcom/parrot/freeflight/map/MapPreloadActivity;Z)V

    .line 189
    return-void
.end method
