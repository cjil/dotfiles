set fish_greeting
if status is-interactive
    # Commands to run in interactive sessions can go here
    alias vim='nvim'
    alias stow_dotfiles='stow -d ~/.dotfiles -t ~ .'
    if [ -f ~/.minio ]
	    source ~/.minio
	    alias minio-setup='mc alias set $MINIO_ALIAS $MINIO_ENDPOINT $MINIO_USER $MINIO_SECRET_KEY'
    end 

end
