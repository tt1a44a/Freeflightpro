.class public Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;
.super Ljava/lang/Object;
.source "FpvAlert.java"


# instance fields
.field private final mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const v0, 0x7f0a051d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/parrot/freeflight/piloting/widget/AlertView;

    iput-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    .line 22
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setItemLayout(I)V

    .line 23
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    const v1, 0x7f0a04ed

    invoke-virtual {v0, v1}, Lcom/parrot/freeflight/piloting/widget/AlertView;->setItemTextId(I)V

    .line 24
    invoke-virtual {p0, p2}, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->update(Lcom/parrot/freeflight/core/model/DroneModel;)Z

    .line 25
    return-void
.end method


# virtual methods
.method public update(Lcom/parrot/freeflight/core/model/DroneModel;)Z
    .locals 5
    .param p1, "droneModel"    # Lcom/parrot/freeflight/core/model/DroneModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    .line 29
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getConnectionState()Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/parrot/freeflight/core/connection/ConnectionManager$ConnectionState;->isDroneConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-virtual {p1}, Lcom/parrot/freeflight/core/model/DroneModel;->getAlertContainer()Lcom/parrot/freeflight/piloting/alert/AlertContainer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/parrot/freeflight/piloting/alert/AlertContainer;->getGenericAlerts(Z)Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->refresh(Ljava/util/List;)Z

    move-result v1

    .line 35
    :goto_0
    return v1

    .line 33
    .end local v0    # "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .restart local v0    # "alerts":Ljava/util/List;, "Ljava/util/List<Lcom/parrot/freeflight/piloting/alert/Alert;>;"
    new-instance v1, Lcom/parrot/freeflight/piloting/alert/Alert;

    const/16 v2, 0x33

    const v3, 0x7f11012f

    invoke-direct {v1, v2, v3, v4}, Lcom/parrot/freeflight/piloting/alert/Alert;-><init>(III)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v1, p0, Lcom/parrot/freeflight/piloting/ui/fpv/FpvAlert;->mAlertView:Lcom/parrot/freeflight/piloting/widget/AlertView;

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/widget/AlertView;->refresh(Ljava/util/List;)Z

    move-result v1

    goto :goto_0
.end method
