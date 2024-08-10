.class public interface abstract Lcom/parrot/freeflight/map/GLMapLayout$OnMapClickListener;
.super Ljava/lang/Object;
.source "GLMapLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/map/GLMapLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMapClickListener"
.end annotation


# virtual methods
.method public abstract onMapClick(Lcom/google/android/gms/maps/model/LatLng;)Z
    .param p1    # Lcom/google/android/gms/maps/model/LatLng;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
.end method
