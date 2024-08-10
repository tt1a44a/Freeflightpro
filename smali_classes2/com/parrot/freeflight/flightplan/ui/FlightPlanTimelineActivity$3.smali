.class Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$3;
.super Ljava/lang/Object;
.source "FlightPlanTimelineActivity.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->startAnimation(Landroid/view/DragEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity$3;->this$0:Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;->access$100(Lcom/parrot/freeflight/flightplan/ui/FlightPlanTimelineActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 160
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 154
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 150
    return-void
.end method
