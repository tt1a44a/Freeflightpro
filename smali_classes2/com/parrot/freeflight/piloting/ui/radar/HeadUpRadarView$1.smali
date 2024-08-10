.class Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView$1;
.super Ljava/lang/Object;
.source "HeadUpRadarView.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRefresh()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;->access$000(Lcom/parrot/freeflight/piloting/ui/radar/HeadUpRadarView;)V

    .line 72
    return-void
.end method
