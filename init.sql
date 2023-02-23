CREATE TABLE d_albums(
    sk_id bigint PRIMARY KEY,
    bk_id varchar(64),
    name varchar(256)
);

CREATE TABLE d_artists(
    sk_id bigint PRIMARY KEY,
    bk_id varchar(64),
    name varchar(256)
);

create table d_playlists
(
    sk_id            bigint PRIMARY KEY ,
    bk_id            bigint,
    name             varchar(64),
    collaborative    bool,
    last_modified_at timestamp,
    num_followers    bigint,
    num_edits        bigint
);

CREATE TABLE d_tracks(
    sk_id bigint PRIMARY KEY,
    bk_id varchar(64),
    name varchar(256),
    duration bigint
);

CREATE TABLE f_playlist_tracks(
    id bigint primary key,
    sk_playlist bigint,
    sk_artist bigint,
    sk_album bigint,
    sk_track bigint,
    track_position int,
     CONSTRAINT fk_playlist
      FOREIGN KEY(sk_playlist)
	  REFERENCES d_playlists(sk_id)
	  ON DELETE CASCADE,
	  CONSTRAINT fk_artist
      FOREIGN KEY(sk_artist)
	  REFERENCES d_artists(sk_id)
	  ON DELETE CASCADE,
	  CONSTRAINT fk_album
      FOREIGN KEY(sk_album)
	  REFERENCES d_albums(sk_id)
	  ON DELETE CASCADE,
	  CONSTRAINT fk_track
      FOREIGN KEY(sk_track)
	  REFERENCES d_tracks(sk_id)
	  ON DELETE CASCADE

);