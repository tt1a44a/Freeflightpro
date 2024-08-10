.class Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$2;
.super Ljava/lang/Object;
.source "TimelineGroupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$2;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView$2;->this$0:Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;->access$301(Lcom/parrot/freeflight/flightplan/timeline/TimelineGroupView;)V

    .line 379
    return-void
.end method
