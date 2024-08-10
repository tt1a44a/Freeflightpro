.class public Lcom/parrot/freeflight/piloting/ui/fixedwing/LoiterSwitchButtonValueChangedListener;
.super Ljava/lang/Object;
.source "LoiterSwitchButtonValueChangedListener.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/widget/SwitchButton$OnValueChangedListener;


# instance fields
.field private final mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;)V
    .locals 0
    .param p1, "fixedWingModel"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/LoiterSwitchButtonValueChangedListener;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    .line 15
    return-void
.end method


# virtual methods
.method public onSwitchValueChanged(Lcom/parrot/freeflight/piloting/widget/SwitchButton;I)V
    .locals 2
    .param p1, "switchButton"    # Lcom/parrot/freeflight/piloting/widget/SwitchButton;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "direction"    # I

    .prologue
    .line 19
    if-nez p2, :cond_0

    .line 20
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/LoiterSwitchButtonValueChangedListener;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->startCircling(I)V

    .line 24
    :goto_0
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fixedwing/LoiterSwitchButtonValueChangedListener;->mFixedWingModel:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->startCircling(I)V

    goto :goto_0
.end method
