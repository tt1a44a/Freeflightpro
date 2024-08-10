.class Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;
.super Ljava/lang/Object;
.source "MediaPlayerActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 67
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 58
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 62
    iget-object v0, p0, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity$1;->this$0:Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;->access$002(Lcom/parrot/freeflight/mediaplayer/MediaPlayerActivity;I)I

    .line 63
    return-void
.end method
